struct PGlobals {
  x_Interp : f32,
}

@group(0) @binding(1) var x_To : texture_2d<f32>;

@group(0) @binding(3) var sampler_To : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(2) var sampler_MainTex : sampler;

var<private> SV_Target0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_41 : PGlobals;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD0;
  let x_24 : vec4<f32> = textureSample(x_To, sampler_To, x_23);
  u_xlat0 = x_24;
  let x_31 : vec2<f32> = vs_TEXCOORD0;
  let x_32 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_31);
  u_xlat1 = x_32;
  let x_33 : vec4<f32> = u_xlat0;
  let x_34 : vec4<f32> = u_xlat1;
  u_xlat0 = (x_33 + -(x_34));
  let x_46 : f32 = x_41.x_Interp;
  let x_48 : vec4<f32> = u_xlat0;
  let x_50 : vec4<f32> = u_xlat1;
  SV_Target0 = ((vec4<f32>(x_46, x_46, x_46, x_46) * x_48) + x_50);
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

