diagnostic(off, derivative_uniformity);

var<private> u_xlat0 : vec4<f32>;

var<private> vs_COLOR0 : vec4<f32>;

var<private> vs_COLOR1 : vec4<f32>;

var<private> u_xlat1 : vec2<f32>;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(1) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_12 : vec4<f32> = vs_COLOR0;
  let x_14 : vec4<f32> = vs_COLOR1;
  u_xlat0 = (x_12 + -(x_14));
  let x_31 : vec4<f32> = vs_TEXCOORD0;
  let x_33 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_31.x, x_31.y));
  u_xlat1.x = x_33.w;
  let x_40 : vec2<f32> = u_xlat1;
  let x_43 : vec4<f32> = vs_TEXCOORD1;
  let x_46 : vec4<f32> = vs_TEXCOORD1;
  u_xlat1 = ((vec2<f32>(x_40.x, x_40.x) * vec2<f32>(x_43.x, x_43.x)) + -(vec2<f32>(x_46.z, x_46.y)));
  let x_50 : vec2<f32> = u_xlat1;
  u_xlat1 = clamp(x_50, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_56 : vec2<f32> = u_xlat1;
  let x_58 : vec4<f32> = u_xlat0;
  let x_60 : vec4<f32> = vs_COLOR1;
  u_xlat0 = ((vec4<f32>(x_56.x, x_56.x, x_56.x, x_56.x) * x_58) + x_60);
  let x_64 : vec2<f32> = u_xlat1;
  let x_66 : vec4<f32> = u_xlat0;
  SV_Target0 = (vec4<f32>(x_64.y, x_64.y, x_64.y, x_64.y) * x_66);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_COLOR0_param : vec4<f32>, @location(1) vs_COLOR1_param : vec4<f32>, @location(2) vs_TEXCOORD0_param : vec4<f32>, @location(3) vs_TEXCOORD1_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_COLOR0 = vs_COLOR0_param;
  vs_COLOR1 = vs_COLOR1_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


