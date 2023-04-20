diagnostic(off, derivative_uniformity);

var<private> u_xlat0 : f32;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(2) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> u_xlat1 : f32;

@group(0) @binding(1) var x_GUIClipTexture : texture_2d<f32>;

@group(0) @binding(3) var sampler_GUIClipTexture : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> vs_COLOR0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_22 : vec2<f32> = vs_TEXCOORD0;
  let x_24 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_22);
  u_xlat0 = x_24.w;
  let x_35 : vec2<f32> = vs_TEXCOORD1;
  let x_36 : vec4<f32> = textureSample(x_GUIClipTexture, sampler_GUIClipTexture, x_35);
  u_xlat1 = x_36.w;
  let x_38 : f32 = u_xlat1;
  let x_39 : f32 = u_xlat0;
  u_xlat0 = (x_38 * x_39);
  let x_43 : f32 = u_xlat0;
  let x_48 : f32 = vs_COLOR0.w;
  SV_Target0.w = (x_43 * x_48);
  let x_53 : vec4<f32> = vs_COLOR0;
  let x_54 : vec3<f32> = vec3<f32>(x_53.x, x_53.y, x_53.z);
  let x_55 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_54.x, x_54.y, x_54.z, x_55.w);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(1) vs_TEXCOORD0_param : vec2<f32>, @location(2) vs_TEXCOORD1_param : vec2<f32>, @location(0) vs_COLOR0_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_COLOR0 = vs_COLOR0_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


