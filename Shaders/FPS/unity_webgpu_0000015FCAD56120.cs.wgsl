var<private> u_xlatu0 : vec4<u32>;

var<private> gl_GlobalInvocationID : vec3<u32>;

var<private> u_xlati0 : vec2<i32>;

@group(0) @binding(0) var DS4x : texture_2d<f32>;

var<private> u_xlatu1 : vec4<u32>;

var<private> u_xlati6 : i32;

@group(0) @binding(1) var DS8x_origX0X : texture_storage_2d<rg32float, write>;

@group(0) @binding(2) var DS8xAtlas_origX1X : texture_storage_2d_array<rg32float, write>;

var<private> gl_LocalInvocationIndex : u32;

var<private> u_xlatu2 : vec4<u32>;

@group(0) @binding(3) var DS16x_origX2X : texture_storage_2d<rg32float, write>;

@group(0) @binding(4) var DS16xAtlas_origX3X : texture_storage_2d_array<rg32float, write>;

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
  var param : i32;
  var param_1 : i32;
  var param_2 : i32;
  var param_3 : i32;
  var param_4 : i32;
  var param_5 : i32;
  var param_6 : i32;
  var param_7 : i32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_49 : vec3<u32> = gl_GlobalInvocationID;
  let x_53 : vec2<u32> = (vec2<u32>(x_49.x, x_49.y) << vec2<u32>(1u, 1u));
  let x_54 : vec4<u32> = u_xlatu0;
  u_xlatu0 = vec4<u32>(x_53.x, x_53.y, x_54.z, x_54.w);
  u_xlatu0.z = 0u;
  u_xlatu0.w = 0u;
  let x_70 : vec4<u32> = u_xlatu0;
  let x_74 : u32 = u_xlatu0.w;
  let x_77 : vec4<f32> = textureLoad(DS4x, bitcast<vec2<i32>>(vec2<u32>(x_70.x, x_70.y)), bitcast<i32>(x_74));
  u_xlati0 = bitcast<vec2<i32>>(vec2<f32>(x_77.x, x_77.y));
  let x_82 : vec3<u32> = gl_GlobalInvocationID;
  let x_85 : vec2<u32> = (vec2<u32>(x_82.x, x_82.y) >> vec2<u32>(2u, 2u));
  let x_86 : vec4<u32> = u_xlatu1;
  u_xlatu1 = vec4<u32>(x_85.x, x_85.y, x_86.z, x_86.w);
  let x_92 : u32 = gl_GlobalInvocationID.x;
  let x_95 : u32 = gl_GlobalInvocationID.y;
  param = bitcast<i32>(x_92);
  param_1 = bitcast<i32>(x_95);
  param_2 = 2i;
  param_3 = 30i;
  let x_103 : i32 = int_bitfieldInsert_i1_i1_i1_i1_(&(param), &(param_1), &(param_2), &(param_3));
  u_xlati6 = x_103;
  let x_104 : i32 = u_xlati6;
  let x_105 : u32 = bitcast<u32>(x_104);
  let x_109 : vec2<u32> = (vec2<u32>(x_105, x_105) & vec2<u32>(15u, 15u));
  let x_110 : vec4<u32> = u_xlatu1;
  u_xlatu1 = vec4<u32>(x_110.x, x_110.y, x_109.x, x_109.y);
  let x_116 : vec3<u32> = gl_GlobalInvocationID;
  let x_120 : vec2<i32> = u_xlati0;
  textureStore(DS8x_origX0X, bitcast<vec2<i32>>(vec2<u32>(x_116.x, x_116.y)), bitcast<vec4<f32>>(vec4<i32>(x_120.x, x_120.y, x_120.x, x_120.x)));
  let x_127 : vec4<u32> = u_xlatu1;
  let x_131 : vec2<i32> = u_xlati0;
  textureStore(DS8xAtlas_origX1X, (bitcast<vec3<i32>>(vec3<u32>(x_127.x, x_127.y, x_127.z))).xy, (bitcast<vec3<i32>>(vec3<u32>(x_127.x, x_127.y, x_127.z))).z, bitcast<vec4<f32>>(vec4<i32>(x_131.x, x_131.y, x_131.x, x_131.x)));
  let x_135 : u32 = gl_LocalInvocationIndex;
  u_xlati6 = bitcast<i32>((x_135 & 9u));
  let x_139 : i32 = u_xlati6;
  if ((x_139 == 0i)) {
    let x_145 : vec3<u32> = gl_GlobalInvocationID;
    u_xlatu1 = (vec4<u32>(x_145.x, x_145.y, x_145.y, x_145.y) >> vec4<u32>(1u, 1u, 1u, 1u));
    let x_150 : vec4<u32> = u_xlatu1;
    let x_152 : vec2<u32> = (vec2<u32>(x_150.x, x_150.w) >> vec2<u32>(2u, 2u));
    let x_153 : vec4<u32> = u_xlatu2;
    u_xlatu2 = vec4<u32>(x_152.x, x_152.y, x_153.z, x_153.w);
    let x_156 : u32 = u_xlatu1.x;
    let x_159 : u32 = u_xlatu1.w;
    param_4 = bitcast<i32>(x_156);
    param_5 = bitcast<i32>(x_159);
    param_6 = 2i;
    param_7 = 30i;
    let x_165 : i32 = int_bitfieldInsert_i1_i1_i1_i1_(&(param_4), &(param_5), &(param_6), &(param_7));
    u_xlati6 = x_165;
    let x_166 : i32 = u_xlati6;
    let x_167 : u32 = bitcast<u32>(x_166);
    let x_169 : vec2<u32> = (vec2<u32>(x_167, x_167) & vec2<u32>(15u, 15u));
    let x_170 : vec4<u32> = u_xlatu2;
    u_xlatu2 = vec4<u32>(x_170.x, x_170.y, x_169.x, x_169.y);
    let x_174 : vec4<u32> = u_xlatu1;
    let x_177 : vec2<i32> = u_xlati0;
    textureStore(DS16x_origX2X, bitcast<vec2<i32>>(vec2<u32>(x_174.x, x_174.y)), bitcast<vec4<f32>>(vec4<i32>(x_177.x, x_177.y, x_177.x, x_177.x)));
    let x_182 : vec4<u32> = u_xlatu2;
    let x_185 : vec2<i32> = u_xlati0;
    textureStore(DS16xAtlas_origX3X, (bitcast<vec3<i32>>(vec3<u32>(x_182.x, x_182.y, x_182.z))).xy, (bitcast<vec3<i32>>(vec3<u32>(x_182.x, x_182.y, x_182.z))).z, bitcast<vec4<f32>>(vec4<i32>(x_185.x, x_185.y, x_185.x, x_185.x)));
  }
  return;
}

@compute @workgroup_size(8i, 8i, 1i)
fn main(@builtin(global_invocation_id) gl_GlobalInvocationID_param : vec3<u32>, @builtin(local_invocation_index) gl_LocalInvocationIndex_param : u32) {
  gl_GlobalInvocationID = gl_GlobalInvocationID_param;
  gl_LocalInvocationIndex = gl_LocalInvocationIndex_param;
  main_1();
}

