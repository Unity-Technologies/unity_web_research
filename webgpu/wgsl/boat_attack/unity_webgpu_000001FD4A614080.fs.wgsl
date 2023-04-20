diagnostic(off, derivative_uniformity);

struct PGlobals {
  /* @offset(0) */
  x_TextureSampleAdd : vec4<f32>,
  /* @offset(16) */
  x_ClipRect : vec4<f32>,
}

var<private> u_xlat0 : vec4<f32>;

var<private> vs_COLOR0 : vec4<f32>;

var<private> u_xlat1 : vec4<f32>;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(1) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_50 : PGlobals;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> u_xlat3 : f32;

var<private> u_xlat6 : f32;

var<private> SV_Target0 : vec4<f32>;

var<private> u_xlatb0 : bool;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_16 : f32 = vs_COLOR0.w;
  u_xlat0.x = (x_16 * 255.0f);
  let x_23 : f32 = u_xlat0.x;
  u_xlat0.x = round(x_23);
  let x_27 : f32 = u_xlat0.x;
  u_xlat0.w = (x_27 * 0.0039215688593685627f);
  let x_45 : vec2<f32> = vs_TEXCOORD0;
  let x_46 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_45);
  u_xlat1 = x_46;
  let x_47 : vec4<f32> = u_xlat1;
  let x_55 : vec4<f32> = x_50.x_TextureSampleAdd;
  u_xlat1 = (x_47 + x_55);
  let x_58 : vec4<f32> = vs_COLOR0;
  let x_59 : vec3<f32> = vec3<f32>(x_58.x, x_58.y, x_58.z);
  let x_60 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_59.x, x_59.y, x_59.z, x_60.w);
  let x_62 : vec4<f32> = u_xlat0;
  let x_63 : vec4<f32> = u_xlat1;
  u_xlat0 = (x_62 * x_63);
  let x_67 : vec4<f32> = x_50.x_ClipRect;
  let x_71 : vec4<f32> = x_50.x_ClipRect;
  let x_73 : vec2<f32> = (-(vec2<f32>(x_67.x, x_67.y)) + vec2<f32>(x_71.z, x_71.w));
  let x_74 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_73.x, x_73.y, x_74.z, x_74.w);
  let x_76 : vec4<f32> = u_xlat1;
  let x_79 : vec4<f32> = vs_TEXCOORD2;
  let x_83 : vec2<f32> = (vec2<f32>(x_76.x, x_76.y) + -(abs(vec2<f32>(x_79.x, x_79.y))));
  let x_84 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_83.x, x_83.y, x_84.z, x_84.w);
  let x_86 : vec4<f32> = u_xlat1;
  let x_88 : vec4<f32> = vs_TEXCOORD2;
  let x_90 : vec2<f32> = (vec2<f32>(x_86.x, x_86.y) * vec2<f32>(x_88.z, x_88.w));
  let x_91 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_90.x, x_90.y, x_91.z, x_91.w);
  let x_93 : vec4<f32> = u_xlat1;
  let x_99 : vec2<f32> = clamp(vec2<f32>(x_93.x, x_93.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_100 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_99.x, x_99.y, x_100.z, x_100.w);
  let x_104 : f32 = u_xlat1.y;
  let x_106 : f32 = u_xlat1.x;
  u_xlat1.x = (x_104 * x_106);
  let x_111 : f32 = u_xlat0.w;
  let x_113 : f32 = u_xlat1.x;
  u_xlat3 = ((x_111 * x_113) + -0.00100000004749745131f);
  let x_119 : f32 = u_xlat0.w;
  let x_121 : f32 = u_xlat1.x;
  u_xlat6 = (x_119 * x_121);
  let x_125 : f32 = u_xlat6;
  let x_127 : vec4<f32> = u_xlat0;
  let x_129 : vec3<f32> = (vec3<f32>(x_125, x_125, x_125) * vec3<f32>(x_127.x, x_127.y, x_127.z));
  let x_130 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_129.x, x_129.y, x_129.z, x_130.w);
  let x_132 : f32 = u_xlat6;
  SV_Target0.w = x_132;
  let x_138 : f32 = u_xlat3;
  u_xlatb0 = (x_138 < 0.0f);
  let x_140 : bool = u_xlatb0;
  if (((select(0i, 1i, x_140) * -1i) != 0i)) {
    discard;
  }
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_COLOR0_param : vec4<f32>, @location(1) vs_TEXCOORD0_param : vec2<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_COLOR0 = vs_COLOR0_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


