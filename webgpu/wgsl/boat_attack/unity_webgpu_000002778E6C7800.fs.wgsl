diagnostic(off, derivative_uniformity);

struct PGlobals {
  /* @offset(0) */
  x_AlphaParam : f32,
}

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(1) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> SV_Target0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_34 : PGlobals;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD0;
  let x_24 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_23);
  u_xlat0 = x_24;
  let x_31 : f32 = u_xlat0.w;
  let x_39 : f32 = x_34.x_AlphaParam;
  SV_Target0.w = (x_31 * x_39);
  let x_44 : vec4<f32> = u_xlat0;
  let x_45 : vec3<f32> = vec3<f32>(x_44.x, x_44.y, x_44.z);
  let x_46 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_45.x, x_45.y, x_45.z, x_46.w);
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


