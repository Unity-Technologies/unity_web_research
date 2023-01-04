struct PGlobals {
  x_CameraDepthAttachment_TexelSize : vec4<f32>,
}

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_16 : PGlobals;

@group(0) @binding(0) var x_CameraDepthAttachment : texture_multisampled_2d<f32>;

var<private> SV_Target0 : f32;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec2<f32>;
  var u_xlatu0 : vec4<u32>;
  var u_xlat1 : f32;
  var u_xlat3 : f32;
  var u_xlat2 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_12 : vec2<f32> = vs_TEXCOORD0;
  let x_21 : vec4<f32> = x_16.x_CameraDepthAttachment_TexelSize;
  u_xlat0 = (x_12 * vec2<f32>(x_21.z, x_21.w));
  let x_28 : vec2<f32> = u_xlat0;
  let x_32 : vec2<u32> = bitcast<vec2<u32>>(vec2<i32>(x_28));
  let x_33 : vec4<u32> = u_xlatu0;
  u_xlatu0 = vec4<u32>(x_32.x, x_32.y, x_33.z, x_33.w);
  u_xlatu0.z = 0u;
  u_xlatu0.w = 0u;
  let x_47 : vec4<u32> = u_xlatu0;
  let x_50 : vec4<f32> = textureLoad(x_CameraDepthAttachment, bitcast<vec2<i32>>(vec2<u32>(x_47.x, x_47.y)), 0i);
  u_xlat1 = x_50.x;
  let x_52 : f32 = u_xlat1;
  u_xlat1 = min(x_52, 1.0f);
  let x_57 : vec4<u32> = u_xlatu0;
  let x_61 : vec4<f32> = textureLoad(x_CameraDepthAttachment, bitcast<vec2<i32>>(vec2<u32>(x_57.x, x_57.y)), 1i);
  u_xlat3 = x_61.x;
  let x_63 : f32 = u_xlat1;
  let x_64 : f32 = u_xlat3;
  u_xlat1 = min(x_63, x_64);
  let x_67 : vec4<u32> = u_xlatu0;
  let x_71 : vec4<f32> = textureLoad(x_CameraDepthAttachment, bitcast<vec2<i32>>(vec2<u32>(x_67.x, x_67.y)), 2i);
  u_xlat3 = x_71.x;
  let x_74 : vec4<u32> = u_xlatu0;
  let x_78 : vec4<f32> = textureLoad(x_CameraDepthAttachment, bitcast<vec2<i32>>(vec2<u32>(x_74.x, x_74.y)), 3i);
  u_xlat0.x = x_78.x;
  let x_82 : f32 = u_xlat1;
  let x_83 : f32 = u_xlat3;
  u_xlat2 = min(x_82, x_83);
  let x_87 : f32 = u_xlat2;
  let x_89 : f32 = u_xlat0.x;
  SV_Target0 = min(x_87, x_89);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : f32,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

