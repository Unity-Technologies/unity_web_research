var<private> gl_GlobalInvocationID : vec3<u32>;

@group(0) @binding(0) var DS4x : texture_2d<f32>;

@group(0) @binding(1) var DS8x_origX0X : texture_storage_2d<rg32float, write>;

@group(0) @binding(2) var DS8xAtlas_origX1X : texture_storage_2d_array<rg32float, write>;

var<private> gl_LocalInvocationIndex : u32;

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
  var u_xlatu0 : vec4<u32>;
  var u_xlati0 : vec2<i32>;
  var u_xlatu1 : vec4<u32>;
  var u_xlati6 : i32;
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
  let x_71 : vec4<u32> = u_xlatu0;
  let x_75 : u32 = u_xlatu0.w;
  let x_78 : vec4<f32> = textureLoad(DS4x, bitcast<vec2<i32>>(vec2<u32>(x_71.x, x_71.y)), bitcast<i32>(x_75));
  u_xlati0 = bitcast<vec2<i32>>(vec2<f32>(x_78.x, x_78.y));
  let x_83 : vec3<u32> = gl_GlobalInvocationID;
  let x_86 : vec2<u32> = (vec2<u32>(x_83.x, x_83.y) >> vec2<u32>(2u, 2u));
  let x_87 : vec4<u32> = u_xlatu1;
  u_xlatu1 = vec4<u32>(x_86.x, x_86.y, x_87.z, x_87.w);
  let x_92 : u32 = gl_GlobalInvocationID.x;
  let x_96 : u32 = gl_GlobalInvocationID.y;
  param = bitcast<i32>(x_92);
  param_1 = bitcast<i32>(x_96);
  param_2 = 2i;
  param_3 = 30i;
  let x_104 : i32 = int_bitfieldInsert_i1_i1_i1_i1_(&(param), &(param_1), &(param_2), &(param_3));
  u_xlati6 = x_104;
  let x_105 : i32 = u_xlati6;
  let x_106 : u32 = bitcast<u32>(x_105);
  let x_110 : vec2<u32> = (vec2<u32>(x_106, x_106) & vec2<u32>(15u, 15u));
  let x_111 : vec4<u32> = u_xlatu1;
  u_xlatu1 = vec4<u32>(x_111.x, x_111.y, x_110.x, x_110.y);
  let x_117 : vec3<u32> = gl_GlobalInvocationID;
  let x_121 : vec2<i32> = u_xlati0;
  textureStore(DS8x_origX0X, bitcast<vec2<i32>>(vec2<u32>(x_117.x, x_117.y)), bitcast<vec4<f32>>(vec4<i32>(x_121.x, x_121.y, x_121.x, x_121.x)));
  let x_128 : vec4<u32> = u_xlatu1;
  let x_132 : vec2<i32> = u_xlati0;
  textureStore(DS8xAtlas_origX1X, (bitcast<vec3<i32>>(vec3<u32>(x_128.x, x_128.y, x_128.z))).xy, (bitcast<vec3<i32>>(vec3<u32>(x_128.x, x_128.y, x_128.z))).z, bitcast<vec4<f32>>(vec4<i32>(x_132.x, x_132.y, x_132.x, x_132.x)));
  let x_136 : u32 = gl_LocalInvocationIndex;
  u_xlati6 = bitcast<i32>((x_136 & 9u));
  let x_140 : i32 = u_xlati6;
  if ((x_140 == 0i)) {
    let x_146 : vec3<u32> = gl_GlobalInvocationID;
    u_xlatu1 = (vec4<u32>(x_146.x, x_146.y, x_146.y, x_146.y) >> vec4<u32>(1u, 1u, 1u, 1u));
    let x_151 : vec4<u32> = u_xlatu1;
    let x_153 : vec2<u32> = (vec2<u32>(x_151.x, x_151.w) >> vec2<u32>(2u, 2u));
    let x_154 : vec4<u32> = u_xlatu2;
    u_xlatu2 = vec4<u32>(x_153.x, x_153.y, x_154.z, x_154.w);
    let x_157 : u32 = u_xlatu1.x;
    let x_160 : u32 = u_xlatu1.w;
    param_4 = bitcast<i32>(x_157);
    param_5 = bitcast<i32>(x_160);
    param_6 = 2i;
    param_7 = 30i;
    let x_166 : i32 = int_bitfieldInsert_i1_i1_i1_i1_(&(param_4), &(param_5), &(param_6), &(param_7));
    u_xlati6 = x_166;
    let x_167 : i32 = u_xlati6;
    let x_168 : u32 = bitcast<u32>(x_167);
    let x_170 : vec2<u32> = (vec2<u32>(x_168, x_168) & vec2<u32>(15u, 15u));
    let x_171 : vec4<u32> = u_xlatu2;
    u_xlatu2 = vec4<u32>(x_171.x, x_171.y, x_170.x, x_170.y);
    let x_175 : vec4<u32> = u_xlatu1;
    let x_178 : vec2<i32> = u_xlati0;
    textureStore(DS16x_origX2X, bitcast<vec2<i32>>(vec2<u32>(x_175.x, x_175.y)), bitcast<vec4<f32>>(vec4<i32>(x_178.x, x_178.y, x_178.x, x_178.x)));
    let x_183 : vec4<u32> = u_xlatu2;
    let x_186 : vec2<i32> = u_xlati0;
    textureStore(DS16xAtlas_origX3X, (bitcast<vec3<i32>>(vec3<u32>(x_183.x, x_183.y, x_183.z))).xy, (bitcast<vec3<i32>>(vec3<u32>(x_183.x, x_183.y, x_183.z))).z, bitcast<vec4<f32>>(vec4<i32>(x_186.x, x_186.y, x_186.x, x_186.x)));
  }
  return;
}

@compute @workgroup_size(8i, 8i, 1i)
fn main(@builtin(global_invocation_id) gl_GlobalInvocationID_param : vec3<u32>, @builtin(local_invocation_index) gl_LocalInvocationIndex_param : u32) {
  gl_GlobalInvocationID = gl_GlobalInvocationID_param;
  gl_LocalInvocationIndex = gl_LocalInvocationIndex_param;
  main_1();
}

