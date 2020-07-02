import numpy as np
import fcl
from stl import mesh
import getpass
from mpl_toolkits import mplot3d
from matplotlib import pyplot

# Importing meshes
class Link:
	def __init__(self, stl_file = None, tf = None):
		self.stl_file = stl_file
		self.geometry = mesh.Mesh.from_file(self.stl_file)
		self.verts = np.concatenate((self.geometry.v0, self.geometry.v1, self.geometry.v2), axis=0)  
		self.num_verts = len(self.geometry.v0)
		self.tris = np.empty([self.num_verts, 3], dtype = np.int)
		for i in range(self.num_verts):
			self.tris[i, 0] = i
			self.tris[i, 1] = i + self.num_verts
			self.tris[i, 2] = i + 2*self.num_verts
		self.model = fcl.BVHModel()
		self.model.beginModel(len(self.verts), len(self.tris))
		self.model.addSubModel(self.verts, self.tris)
		self.model.endModel()
		self.tf = tf
		self.coll_object = fcl.CollisionObject(self.model, tf)

# Manager class needed for FCL to work properly (and cleanly) on a whole robot
class Manager:
	def __init__(self, tf_array = None):
		username = getpass.getuser()
		mesh_dir = '/home/' + username + '/kinova-demo/src/jaco_fk/meshes/'
		self.default_tf = fcl.Transform()
		# matplotlib_VIZ = False

		if tf_array is None:
			# These are STL files specific to our arm's configuration obtained from kinova-ros GitHub and placed in the meshes folder
			self.base = Link(mesh_dir + 'base.STL')
			self.shoulder = Link(mesh_dir + 'shoulder.STL')
			self.arm = Link(mesh_dir + 'arm.STL')
			self.forearm = Link(mesh_dir + 'forearm.STL')
			self.wrist1 = Link(mesh_dir + 'wrist.STL')
			self.wrist2 = Link(mesh_dir + 'wrist.STL')
			self.hand_3finger = Link(mesh_dir + 'hand_3finger.STL')
			self.finger_proximal1 = Link(mesh_dir + 'finger_proximal.STL')	
			self.finger_distal1 = Link(mesh_dir + 'finger_distal.STL')
			self.finger_proximal2 = Link(mesh_dir + 'finger_proximal.STL')	
			self.finger_distal2 = Link(mesh_dir + 'finger_distal.STL')
			self.finger_proximal3 = Link(mesh_dir + 'finger_proximal.STL')	
			self.finger_distal3 = Link(mesh_dir + 'finger_distal.STL')

		links_list = [
			self.base.coll_object,
			self.shoulder.coll_object,
			self.arm.coll_object,
			self.forearm.coll_object,
			self.wrist1.coll_object,
			self.wrist2.coll_object,
			self.hand_3finger.coll_object,
			self.finger_proximal1.coll_object,
			self.finger_proximal2.coll_object,
			self.finger_proximal3.coll_object,
			self.finger_distal1.coll_object,
			self.finger_distal2.coll_object,
			self.finger_distal3.coll_object,
		]
		self.manager1 = fcl.DynamicAABBTreeCollisionManager()
		self.manager1.registerObjects(links_list)
		self.manager1.setup()

# Obtains transform array for each link which is given by fk_check_server.py
	def check_collision(self, tf_array):
		self.base.tf = self.default_tf
		self.base.coll_object.setTransform(self.default_tf)

		self.shoulder.tf = tf_array[0]
		self.shoulder.coll_object.setTransform(tf_array[0])

		self.arm.tf = tf_array[1]
		self.arm.coll_object.setTransform(tf_array[1])

		self.forearm.tf = tf_array[2]
		self.forearm.coll_object.setTransform(tf_array[2])

		self.wrist1.tf = tf_array[3]
		self.wrist1.coll_object.setTransform(tf_array[3])

		self.wrist2.tf = tf_array[4]
		self.wrist2.coll_object.setTransform(tf_array[4])

		self.hand_3finger.tf = tf_array[5]
		self.hand_3finger.coll_object.setTransform(tf_array[5])

		self.finger_proximal1.tf = tf_array[6]
		self.finger_proximal1.coll_object.setTransform(tf_array[6])

		self.finger_proximal2.tf = tf_array[7]
		self.finger_proximal2.coll_object.setTransform(tf_array[7])

		self.finger_proximal3.tf = tf_array[8]
		self.finger_proximal3.coll_object.setTransform(tf_array[8])

		self.finger_distal1.tf = tf_array[9]
		self.finger_distal1.coll_object.setTransform(tf_array[9])

		self.finger_distal2.tf = tf_array[10]
		self.finger_distal2.coll_object.setTransform(tf_array[10])

		self.finger_distal3.tf = tf_array[11]
		self.finger_distal3.coll_object.setTransform(tf_array[11])


		#=====================================================================
		# Managed internal (sub-n^2) collision checking step
		#=====================================================================
		internal_cdata = fcl.CollisionData()
		self.manager1.collide(internal_cdata, fcl.defaultCollisionCallback)
		print 'Kinova Jaco2 Arm in Collision?: {}'.format(internal_cdata.result.is_collision)
		return internal_cdata.result.is_collision
# END OF FUNCTIONS

# UNCOMMENT THE FOLLOWING CODE IF YOU WOULD LIKE SOME MATPLOT VIZ

# if matplotlib_VIZ == True
# 	## Matplotlib Visuilization
# 	figure = pyplot.figure()
# 	axes = mplot3d.Axes3D(figure)

# 	#axes.add_collection3d(mplot3d.art3d.Poly3DCollection(arm_half_2.vectors))
# 	axes.add_collection3d(mplot3d.art3d.Poly3DCollection(base.geometry.vectors))
# 	axes.add_collection3d(mplot3d.art3d.Poly3DCollection(arm.geometry.vectors))
# 	axes.add_collection3d(mplot3d.art3d.Poly3DCollection(arm_half_1.geometry.vectors))
# 	axes.add_collection3d(mplot3d.art3d.Poly3DCollection(arm_half_2.geometry.vectors))
# 	axes.add_collection3d(mplot3d.art3d.Poly3DCollection(arm_mico.geometry.vectors))
# 	axes.add_collection3d(mplot3d.art3d.Poly3DCollection(shoulder.geometry.vectors))
# 	axes.add_collection3d(mplot3d.art3d.Poly3DCollection(forearm.geometry.vectors))
# 	axes.add_collection3d(mplot3d.art3d.Poly3DCollection(forearm_mico.geometry.vectors))
# 	axes.add_collection3d(mplot3d.art3d.Poly3DCollection(wrist.geometry.vectors))
# 	axes.add_collection3d(mplot3d.art3d.Poly3DCollection(wrist_spherical_1.geometry.vectors))
# 	axes.add_collection3d(mplot3d.art3d.Poly3DCollection(wrist_spherical_1.geometry.vectors))
# 	axes.add_collection3d(mplot3d.art3d.Poly3DCollection(hand_2finger.geometry.vectors))
# 	axes.add_collection3d(mplot3d.art3d.Poly3DCollection(hand_3finger.geometry.vectors))
# 	axes.add_collection3d(mplot3d.art3d.Poly3DCollection(finger_distal.geometry.vectors))
# 	axes.add_collection3d(mplot3d.art3d.Poly3DCollection(finger_distal.geometry.vectors))
# 	axes.add_collection3d(mplot3d.art3d.Poly3DCollection(ring_small.geometry.vectors))
# 	axes.add_collection3d(mplot3d.art3d.Poly3DCollection(ring_big.geometry.vectors))


# 	# Auto scale to the mesh size
# 	scale = arm.geometry.points.flatten(-1)
# 	axes.auto_scale_xyz(1.5*scale, 1.5*scale, 1.5*scale)

# 	# Show the plot to the screen
# 	pyplot.show()
