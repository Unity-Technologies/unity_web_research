var<private> u_xlat0 : f32;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(1) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> u_xlat2 : f32;

var<private> vs_COLOR0 : vec4<f32>;

var<private> u_xlat1 : vec4<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> u_xlatb0 : bool;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec4<f32> = vs_TEXCOORD0;
  let x_25 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_23.x, x_23.y));
  u_xlat0 = x_25.w;
  let x_29 : f32 = u_xlat0;
  let x_34 : f32 = vs_TEXCOORD1.x;
  let x_37 : f32 = vs_TEXCOORD1.w;
  u_xlat0 = ((x_29 * x_34) + -(x_37));
  let x_40 : f32 = u_xlat0;
  u_xlat0 = clamp(x_40, 0.0f, 1.0f);
  let x_47 : f32 = vs_COLOR0.w;
  let x_48 : f32 = u_xlat0;
  u_xlat2 = ((x_47 * x_48) + -0.001f);
  let x_54 : f32 = u_xlat0;
  let x_56 : vec4<f32> = vs_COLOR0;
  u_xlat1 = (vec4<f32>(x_54, x_54, x_54, x_54) * x_56);
  let x_60 : vec4<f32> = u_xlat1;
  SV_Target0 = x_60;
  let x_64 : f32 = u_xlat2;
  u_xlatb0 = (x_64 < 0.0f);
  let x_66 : bool = u_xlatb0;
  if (((select(0i, 1i, x_66) * -1i) != 0i)) {
    discard;
  }
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(1) vs_TEXCOORD0_param : vec4<f32>, @location(2) vs_TEXCOORD1_param : vec4<f32>, @location(0) vs_COLOR0_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_COLOR0 = vs_COLOR0_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

