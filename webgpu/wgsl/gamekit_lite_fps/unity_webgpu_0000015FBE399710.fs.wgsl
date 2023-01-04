struct PGlobals {
  x_ZBufferParams : vec4<f32>,
  x_Distance : f32,
  x_LensCoeff : f32,
  x_RcpMaxCoC : f32,
}

var<private> u_xlat0 : f32;

@group(0) @binding(1) var x_CameraDepthTexture : texture_2d<f32>;

@group(0) @binding(2) var sampler_CameraDepthTexture : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(0) @binding(0) var<uniform> x_30 : PGlobals;

var<private> u_xlat1 : f32;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_22 : vec2<f32> = vs_TEXCOORD1;
  let x_24 : vec4<f32> = textureSample(x_CameraDepthTexture, sampler_CameraDepthTexture, x_22);
  u_xlat0 = x_24.x;
  let x_36 : f32 = x_30.x_ZBufferParams.z;
  let x_37 : f32 = u_xlat0;
  let x_41 : f32 = x_30.x_ZBufferParams.w;
  u_xlat0 = ((x_36 * x_37) + x_41);
  let x_44 : f32 = u_xlat0;
  u_xlat0 = (1.0f / x_44);
  let x_47 : f32 = u_xlat0;
  let x_50 : f32 = x_30.x_Distance;
  u_xlat1 = (x_47 + -(x_50));
  let x_53 : f32 = u_xlat0;
  u_xlat0 = max(x_53, 0.0001f);
  let x_56 : f32 = u_xlat1;
  let x_59 : f32 = x_30.x_LensCoeff;
  u_xlat1 = (x_56 * x_59);
  let x_61 : f32 = u_xlat1;
  let x_62 : f32 = u_xlat0;
  u_xlat0 = (x_61 / x_62);
  let x_64 : f32 = u_xlat0;
  u_xlat0 = (x_64 * 0.5f);
  let x_67 : f32 = u_xlat0;
  let x_70 : f32 = x_30.x_RcpMaxCoC;
  u_xlat0 = ((x_67 * x_70) + 0.5f);
  let x_75 : f32 = u_xlat0;
  SV_Target0 = vec4<f32>(x_75, x_75, x_75, x_75);
  let x_77 : vec4<f32> = SV_Target0;
  SV_Target0 = clamp(x_77, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD1_param : vec2<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

