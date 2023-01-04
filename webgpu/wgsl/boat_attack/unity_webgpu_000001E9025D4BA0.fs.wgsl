struct PGlobals {
  x_ClipRect : vec4<f32>,
}

@group(1) @binding(0) var<uniform> x_13 : PGlobals;

var<private> vs_TEXCOORD2 : vec4<f32>;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(1) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> vs_COLOR0 : vec4<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec2<f32>;
  var u_xlat2 : f32;
  var u_xlat1 : vec4<f32>;
  var u_xlatb0 : bool;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_18 : vec4<f32> = x_13.x_ClipRect;
  let x_22 : vec4<f32> = x_13.x_ClipRect;
  u_xlat0 = (-(vec2<f32>(x_18.x, x_18.y)) + vec2<f32>(x_22.z, x_22.w));
  let x_25 : vec2<f32> = u_xlat0;
  let x_28 : vec4<f32> = vs_TEXCOORD2;
  u_xlat0 = (x_25 + -(abs(vec2<f32>(x_28.x, x_28.y))));
  let x_33 : vec2<f32> = u_xlat0;
  let x_34 : vec4<f32> = vs_TEXCOORD2;
  u_xlat0 = (x_33 * vec2<f32>(x_34.z, x_34.w));
  let x_37 : vec2<f32> = u_xlat0;
  u_xlat0 = clamp(x_37, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_47 : f32 = u_xlat0.y;
  let x_50 : f32 = u_xlat0.x;
  u_xlat0.x = (x_47 * x_50);
  let x_65 : vec4<f32> = vs_TEXCOORD0;
  let x_67 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_65.x, x_65.y));
  u_xlat2 = x_67.w;
  let x_70 : f32 = u_xlat2;
  let x_74 : f32 = vs_TEXCOORD1.x;
  let x_77 : f32 = vs_TEXCOORD1.w;
  u_xlat2 = ((x_70 * x_74) + -(x_77));
  let x_80 : f32 = u_xlat2;
  u_xlat2 = clamp(x_80, 0.0f, 1.0f);
  let x_84 : f32 = u_xlat2;
  let x_87 : vec4<f32> = vs_COLOR0;
  u_xlat1 = (vec4<f32>(x_84, x_84, x_84, x_84) * x_87);
  let x_90 : f32 = u_xlat1.w;
  let x_92 : f32 = u_xlat0.x;
  u_xlat2 = ((x_90 * x_92) + -0.001f);
  let x_96 : vec2<f32> = u_xlat0;
  let x_98 : vec4<f32> = u_xlat1;
  u_xlat1 = (vec4<f32>(x_96.x, x_96.x, x_96.x, x_96.x) * x_98);
  let x_102 : vec4<f32> = u_xlat1;
  SV_Target0 = x_102;
  let x_106 : f32 = u_xlat2;
  u_xlatb0 = (x_106 < 0.0f);
  let x_108 : bool = u_xlatb0;
  if (((select(0i, 1i, x_108) * -1i) != 0i)) {
    discard;
  }
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(3) vs_TEXCOORD2_param : vec4<f32>, @location(1) vs_TEXCOORD0_param : vec4<f32>, @location(2) vs_TEXCOORD1_param : vec4<f32>, @location(0) vs_COLOR0_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_COLOR0 = vs_COLOR0_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

