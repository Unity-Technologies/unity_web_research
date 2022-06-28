struct PGlobals {
  x_Color : vec4<f32>,
  x_Cutoff : f32,
}

var<private> u_xlat0 : f32;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(2) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(0) @binding(0) var<uniform> x_31 : PGlobals;

var<private> u_xlatb0 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_22 : vec2<f32> = vs_TEXCOORD1;
  let x_24 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_22);
  u_xlat0 = x_24.w;
  let x_28 : f32 = u_xlat0;
  let x_36 : f32 = x_31.x_Color.w;
  let x_40 : f32 = x_31.x_Cutoff;
  u_xlat0 = ((x_28 * x_36) + -(x_40));
  let x_46 : f32 = u_xlat0;
  u_xlatb0 = (x_46 < 0.0f);
  let x_49 : bool = u_xlatb0;
  if (((select(0i, 1i, x_49) * -1i) != 0i)) {
    discard;
  }
  SV_Target0 = vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f);
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
