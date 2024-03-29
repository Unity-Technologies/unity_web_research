diagnostic(off, derivative_uniformity);

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(0) var x_LightBuffer : texture_2d<f32>;

@group(0) @binding(1) var sampler_LightBuffer : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD0;
  let x_24 : vec4<f32> = textureSample(x_LightBuffer, sampler_LightBuffer, x_23);
  u_xlat0 = x_24;
  let x_25 : vec4<f32> = u_xlat0;
  u_xlat0 = log2(x_25);
  let x_29 : vec4<f32> = u_xlat0;
  SV_Target0 = -(x_29);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


