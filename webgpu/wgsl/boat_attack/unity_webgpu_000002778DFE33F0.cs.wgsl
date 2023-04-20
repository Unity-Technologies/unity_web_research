struct CGlobals {
  /* @offset(0) */
  unity_MatrixInvVP : mat4x4<f32>,
  /* @offset(64) */
  x_ScreenSize : vec4<f32>,
  /* @offset(80) */
  x_positionSS : vec4<f32>,
}

alias Arr = array<u32, 4u>;

struct x_ResultBuffer_origX0X_type {
  /* @offset(0) */
  value : Arr,
}

alias RTArr = array<x_ResultBuffer_origX0X_type>;

struct x_ResultBuffer_origX0X {
  /* @offset(0) */
  x_ResultBuffer_origX0X_buf : RTArr,
}

var<private> u_xlat0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_13 : CGlobals;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlatu1 : vec4<u32>;

@group(0) @binding(0) var x_CameraDepthTexture : texture_2d<f32>;

@group(0) @binding(2) var<storage, read_write> x_125 : x_ResultBuffer_origX0X;

var<private> u_xlatu0 : vec4<u32>;

var<private> u_xlati0 : vec4<i32>;

@group(0) @binding(1) var x_CameraNormalsTexture : texture_2d<f32>;

fn main_1() {
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_19 : vec4<f32> = x_13.x_ScreenSize;
  let x_23 : vec2<f32> = (vec2<f32>(x_19.z, x_19.w) * vec2<f32>(0.5f, 0.5f));
  let x_24 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_23.x, x_23.y, x_24.z, x_24.w);
  let x_28 : vec4<f32> = x_13.x_positionSS;
  let x_31 : vec4<f32> = x_13.x_ScreenSize;
  let x_34 : vec4<f32> = u_xlat0;
  let x_36 : vec2<f32> = ((vec2<f32>(x_28.x, x_28.y) * vec2<f32>(x_31.z, x_31.w)) + vec2<f32>(x_34.x, x_34.y));
  let x_37 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_36.x, x_36.y, x_37.z, x_37.w);
  let x_39 : vec4<f32> = u_xlat0;
  let x_46 : vec2<f32> = ((vec2<f32>(x_39.x, x_39.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_47 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_46.x, x_46.y, x_47.z, x_47.w);
  let x_50 : vec4<f32> = u_xlat0;
  let x_55 : vec4<f32> = x_13.unity_MatrixInvVP[1i];
  u_xlat1 = (-(vec4<f32>(x_50.y, x_50.y, x_50.y, x_50.y)) * x_55);
  let x_58 : vec4<f32> = x_13.unity_MatrixInvVP[0i];
  let x_59 : vec4<f32> = u_xlat0;
  let x_62 : vec4<f32> = u_xlat1;
  u_xlat0 = ((x_58 * vec4<f32>(x_59.x, x_59.x, x_59.x, x_59.x)) + x_62);
  let x_69 : vec4<f32> = x_13.x_positionSS;
  let x_74 : vec2<u32> = bitcast<vec2<u32>>(vec2<i32>(vec2<f32>(x_69.x, x_69.y)));
  let x_75 : vec4<u32> = u_xlatu1;
  u_xlatu1 = vec4<u32>(x_74.x, x_74.y, x_75.z, x_75.w);
  u_xlatu1.z = 0u;
  u_xlatu1.w = 0u;
  let x_87 : vec4<u32> = u_xlatu1;
  let x_91 : u32 = u_xlatu1.w;
  let x_93 : vec4<f32> = textureLoad(x_CameraDepthTexture, bitcast<vec2<i32>>(vec2<u32>(x_87.x, x_87.y)), bitcast<i32>(x_91));
  u_xlat1.x = x_93.x;
  let x_98 : vec4<f32> = x_13.unity_MatrixInvVP[2i];
  let x_99 : vec4<f32> = u_xlat1;
  let x_102 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_98 * vec4<f32>(x_99.x, x_99.x, x_99.x, x_99.x)) + x_102);
  let x_104 : vec4<f32> = u_xlat0;
  let x_107 : vec4<f32> = x_13.unity_MatrixInvVP[3i];
  u_xlat0 = (x_104 + x_107);
  let x_110 : vec4<f32> = u_xlat0;
  let x_112 : vec4<f32> = u_xlat0;
  let x_114 : vec3<f32> = (vec3<f32>(x_110.x, x_110.y, x_110.z) / vec3<f32>(x_112.w, x_112.w, x_112.w));
  let x_115 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_114.x, x_114.y, x_114.z, x_115.w);
  u_xlat0.w = 1.0f;
  let x_127 : f32 = u_xlat0.x;
  x_125.x_ResultBuffer_origX0X_buf[0i].value[0i] = bitcast<u32>(x_127);
  let x_133 : f32 = u_xlat0.y;
  x_125.x_ResultBuffer_origX0X_buf[0i].value[1i] = bitcast<u32>(x_133);
  let x_137 : f32 = u_xlat0.z;
  x_125.x_ResultBuffer_origX0X_buf[0i].value[2i] = bitcast<u32>(x_137);
  let x_141 : f32 = u_xlat0.w;
  x_125.x_ResultBuffer_origX0X_buf[0i].value[3i] = bitcast<u32>(x_141);
  let x_146 : vec4<f32> = x_13.x_positionSS;
  let x_148 : vec2<u32> = vec2<u32>(vec2<f32>(x_146.x, x_146.y));
  let x_149 : vec4<u32> = u_xlatu0;
  u_xlatu0 = vec4<u32>(x_148.x, x_148.y, x_149.z, x_149.w);
  u_xlatu0.z = 0u;
  u_xlatu0.w = 0u;
  let x_158 : vec4<u32> = u_xlatu0;
  let x_162 : u32 = u_xlatu0.w;
  let x_164 : vec4<f32> = textureLoad(x_CameraNormalsTexture, bitcast<vec2<i32>>(vec2<u32>(x_158.x, x_158.y)), bitcast<i32>(x_162));
  let x_167 : vec3<i32> = bitcast<vec3<i32>>(vec3<f32>(x_164.x, x_164.y, x_164.z));
  let x_168 : vec4<i32> = u_xlati0;
  u_xlati0 = vec4<i32>(x_167.x, x_167.y, x_167.z, x_168.w);
  u_xlati0.w = 0i;
  let x_173 : i32 = u_xlati0.x;
  x_125.x_ResultBuffer_origX0X_buf[1i].value[0i] = bitcast<u32>(x_173);
  let x_177 : i32 = u_xlati0.y;
  x_125.x_ResultBuffer_origX0X_buf[1i].value[1i] = bitcast<u32>(x_177);
  let x_181 : i32 = u_xlati0.z;
  x_125.x_ResultBuffer_origX0X_buf[1i].value[2i] = bitcast<u32>(x_181);
  let x_185 : i32 = u_xlati0.w;
  x_125.x_ResultBuffer_origX0X_buf[1i].value[3i] = bitcast<u32>(x_185);
  return;
}

@compute @workgroup_size(1i, 1i, 1i)
fn main() {
  main_1();
}

