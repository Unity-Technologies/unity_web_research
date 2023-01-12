struct PGlobals {
  unity_OrthoParams : vec4<f32>,
  x_ZBufferParams : vec4<f32>,
  x_Params : vec4<f32>,
}

@group(1) @binding(0) var<uniform> x_12 : PGlobals;

@group(0) @binding(0) var x_CameraDepthTexture : texture_2d<f32>;

@group(0) @binding(1) var sampler_CameraDepthTexture : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : f32;
  var u_xlat1 : f32;
  var u_xlat2 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_19 : f32 = x_12.unity_OrthoParams.w;
  u_xlat0 = (-(x_19) + 1.0f);
  let x_37 : vec2<f32> = vs_TEXCOORD1;
  let x_39 : vec4<f32> = textureSampleLevel(x_CameraDepthTexture, sampler_CameraDepthTexture, x_37, 0.0f);
  u_xlat1 = x_39.x;
  let x_43 : f32 = u_xlat1;
  let x_46 : f32 = x_12.x_ZBufferParams.x;
  u_xlat2 = (x_43 * x_46);
  let x_48 : f32 = u_xlat0;
  let x_49 : f32 = u_xlat2;
  let x_53 : f32 = x_12.x_ZBufferParams.y;
  u_xlat0 = ((x_48 * x_49) + x_53);
  let x_56 : f32 = x_12.unity_OrthoParams.w;
  let x_58 : f32 = u_xlat2;
  u_xlat2 = ((-(x_56) * x_58) + 1.0f);
  let x_61 : f32 = u_xlat2;
  let x_62 : f32 = u_xlat0;
  u_xlat0 = (x_61 / x_62);
  let x_64 : f32 = u_xlat1;
  let x_66 : f32 = u_xlat0;
  u_xlat0 = (-(x_64) + x_66);
  let x_74 : vec4<f32> = x_12.x_Params;
  let x_76 : f32 = u_xlat0;
  let x_79 : f32 = u_xlat1;
  let x_81 : vec3<f32> = ((vec3<f32>(x_74.x, x_74.x, x_74.x) * vec3<f32>(x_76, x_76, x_76)) + vec3<f32>(x_79, x_79, x_79));
  let x_82 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_81.x, x_81.y, x_81.z, x_82.w);
  SV_Target0.w = 1.0f;
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

