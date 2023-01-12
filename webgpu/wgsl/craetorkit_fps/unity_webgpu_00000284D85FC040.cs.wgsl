var<private> gl_GlobalInvocationID : vec3<u32>;

@group(0) @binding(0) var DS4x : texture_2d<f32>;

@group(0) @binding(1) var DS8x_origX0X : texture_storage_2d<r32float, write>;

@group(0) @binding(2) var DS8xAtlas_origX1X : texture_storage_2d_array<r32float, write>;

var<private> gl_LocalInvocationIndex : u32;

@group(0) @binding(3) var DS16x_origX2X : texture_storage_2d<r32float, write>;

@group(0) @binding(4) var DS16xAtlas_origX3X : texture_storage_2d_array<r32float, write>;

fn int_bitfieldInsert_i1_i1_i1_i1_(base : ptr<function, i32>, insert : ptr<function, i32>, offset_1 : ptr<function, i32>, bits : ptr<function, i32>) -> i32 {
  var mask : u32;
  let x_19 : i32 = *(bits);
  let x_23 : i32 = *(offset_1);
  mask = (~((4294967295u << bitcast<u32>(x_19))) << bitcast<u32>(x_23));
  let x_26 : i32 = *(base);
  let x_28 : u32 = mask;
  let x_31 : i32 = *(insert);
  let x_33 : i32 = *(offset_1);
  let x_36 : u32 = mask;
  return bitcast<i32>(((bitcast<u32>(x_26) & ~(x_28)) | ((bitcast<u32>(x_31) << bitcast<u32>(x_33)) & x_36)));
}

fn main_1() {
  var u_xlatu0 : vec4<u32>;
  var u_xlati0 : i32;
  var u_xlatu1 : vec4<u32>;
  var u_xlati3 : i32;
  var param : i32;
  var param_1 : i32;
  var param_2 : i32;
  var param_3 : i32;
  var u_xlatu2 : vec4<u32>;
  var param_4 : i32;
  var param_5 : i32;
  var param_6 : i32;
  var param_7 : i32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_49 : vec3<u32> = gl_GlobalInvocationID;
  let x_56 : vec2<u32> = bitcast<vec2<u32>>((bitcast<vec2<i32>>(vec2<u32>(x_49.x, x_49.y)) << bitcast<vec2<u32>>(vec2<i32>(1i, 1i))));
  let x_57 : vec4<u32> = u_xlatu0;
  u_xlatu0 = vec4<u32>(x_56.x, x_56.y, x_57.z, x_57.w);
  u_xlatu0.z = 0u;
  u_xlatu0.w = 0u;
  let x_70 : vec4<u32> = u_xlatu0;
  let x_74 : u32 = u_xlatu0.w;
  let x_77 : vec4<f32> = textureLoad(DS4x, bitcast<vec2<i32>>(vec2<u32>(x_70.x, x_70.y)), bitcast<i32>(x_74));
  u_xlati0 = bitcast<i32>(x_77.x);
  let x_81 : vec3<u32> = gl_GlobalInvocationID;
  let x_84 : vec2<u32> = (vec2<u32>(x_81.x, x_81.y) >> vec2<u32>(2u, 2u));
  let x_85 : vec4<u32> = u_xlatu1;
  u_xlatu1 = vec4<u32>(x_84.x, x_84.y, x_85.z, x_85.w);
  let x_90 : u32 = gl_GlobalInvocationID.x;
  let x_94 : u32 = gl_GlobalInvocationID.y;
  param = bitcast<i32>(x_90);
  param_1 = bitcast<i32>(x_94);
  param_2 = 2i;
  param_3 = 30i;
  let x_102 : i32 = int_bitfieldInsert_i1_i1_i1_i1_(&(param), &(param_1), &(param_2), &(param_3));
  u_xlati3 = x_102;
  let x_103 : i32 = u_xlati3;
  let x_104 : u32 = bitcast<u32>(x_103);
  let x_108 : vec2<u32> = (vec2<u32>(x_104, x_104) & vec2<u32>(15u, 15u));
  let x_109 : vec4<u32> = u_xlatu1;
  u_xlatu1 = vec4<u32>(x_109.x, x_109.y, x_108.x, x_108.y);
  let x_115 : vec3<u32> = gl_GlobalInvocationID;
  let x_118 : i32 = u_xlati0;
  textureStore(DS8x_origX0X, bitcast<vec2<i32>>(vec2<u32>(x_115.x, x_115.y)), bitcast<vec4<f32>>(vec4<i32>(x_118, x_118, x_118, x_118)));
  let x_126 : vec4<u32> = u_xlatu1;
  let x_130 : i32 = u_xlati0;
  textureStore(DS8xAtlas_origX1X, (bitcast<vec3<i32>>(vec3<u32>(x_126.x, x_126.y, x_126.z))).xy, (bitcast<vec3<i32>>(vec3<u32>(x_126.x, x_126.y, x_126.z))).z, bitcast<vec4<f32>>(vec4<i32>(x_130, x_130, x_130, x_130)));
  let x_134 : u32 = gl_LocalInvocationIndex;
  u_xlati3 = bitcast<i32>((x_134 & 9u));
  let x_138 : i32 = u_xlati3;
  if ((x_138 == 0i)) {
    let x_144 : vec3<u32> = gl_GlobalInvocationID;
    u_xlatu1 = (vec4<u32>(x_144.x, x_144.y, x_144.y, x_144.y) >> vec4<u32>(1u, 1u, 1u, 1u));
    let x_149 : vec4<u32> = u_xlatu1;
    let x_151 : vec2<u32> = (vec2<u32>(x_149.x, x_149.w) >> vec2<u32>(2u, 2u));
    let x_152 : vec4<u32> = u_xlatu2;
    u_xlatu2 = vec4<u32>(x_151.x, x_151.y, x_152.z, x_152.w);
    let x_155 : u32 = u_xlatu1.x;
    let x_158 : u32 = u_xlatu1.w;
    param_4 = bitcast<i32>(x_155);
    param_5 = bitcast<i32>(x_158);
    param_6 = 2i;
    param_7 = 30i;
    let x_164 : i32 = int_bitfieldInsert_i1_i1_i1_i1_(&(param_4), &(param_5), &(param_6), &(param_7));
    u_xlati3 = x_164;
    let x_165 : i32 = u_xlati3;
    let x_166 : u32 = bitcast<u32>(x_165);
    let x_168 : vec2<u32> = (vec2<u32>(x_166, x_166) & vec2<u32>(15u, 15u));
    let x_169 : vec4<u32> = u_xlatu2;
    u_xlatu2 = vec4<u32>(x_169.x, x_169.y, x_168.x, x_168.y);
    let x_173 : vec4<u32> = u_xlatu1;
    let x_176 : i32 = u_xlati0;
    textureStore(DS16x_origX2X, bitcast<vec2<i32>>(vec2<u32>(x_173.x, x_173.y)), bitcast<vec4<f32>>(vec4<i32>(x_176, x_176, x_176, x_176)));
    let x_181 : vec4<u32> = u_xlatu2;
    let x_184 : i32 = u_xlati0;
    textureStore(DS16xAtlas_origX3X, (bitcast<vec3<i32>>(vec3<u32>(x_181.x, x_181.y, x_181.z))).xy, (bitcast<vec3<i32>>(vec3<u32>(x_181.x, x_181.y, x_181.z))).z, bitcast<vec4<f32>>(vec4<i32>(x_184, x_184, x_184, x_184)));
  }
  return;
}

@compute @workgroup_size(8i, 8i, 1i)
fn main(@builtin(global_invocation_id) gl_GlobalInvocationID_param : vec3<u32>, @builtin(local_invocation_index) gl_LocalInvocationIndex_param : u32) {
  gl_GlobalInvocationID = gl_GlobalInvocationID_param;
  gl_LocalInvocationIndex = gl_LocalInvocationIndex_param;
  main_1();
}

