struct PGlobals {
  x_WorldSpaceLightPos0 : vec4<f32>,
  x_SunSize : f32,
  x_SunSizeConvergence : f32,
}

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(0) var<uniform> x_12 : PGlobals;

var<private> u_xlat2 : vec3<f32>;

var<private> vs_TEXCOORD0 : vec3<f32>;

var<private> u_xlat6 : f32;

var<private> u_xlatb4 : bool;

var<private> u_xlat1 : vec3<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_167 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_17 : f32 = x_12.x_SunSize;
  u_xlat0.x = log2(x_17);
  let x_24 : f32 = u_xlat0.x;
  u_xlat0.x = (x_24 * 0.649999976f);
  let x_29 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_29);
  let x_37 : vec3<f32> = vs_TEXCOORD0;
  let x_38 : vec3<f32> = vs_TEXCOORD0;
  u_xlat2.x = dot(x_37, x_38);
  let x_42 : f32 = u_xlat2.x;
  u_xlat2.x = inverseSqrt(x_42);
  let x_45 : vec3<f32> = u_xlat2;
  let x_47 : vec3<f32> = vs_TEXCOORD0;
  u_xlat2 = (vec3<f32>(x_45.x, x_45.x, x_45.x) * x_47);
  let x_52 : vec4<f32> = x_12.x_WorldSpaceLightPos0;
  let x_54 : vec3<f32> = u_xlat2;
  u_xlat2.x = dot(vec3<f32>(x_52.x, x_52.y, x_52.z), -(x_54));
  let x_59 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_59, 0.0f, 1.0f);
  let x_65 : f32 = u_xlat2.x;
  u_xlat2.x = log2(x_65);
  let x_69 : f32 = u_xlat2.x;
  let x_72 : f32 = x_12.x_SunSizeConvergence;
  u_xlat2.x = (x_69 * x_72);
  let x_76 : f32 = u_xlat2.x;
  u_xlat2.x = exp2(x_76);
  let x_81 : f32 = u_xlat2.x;
  u_xlat6 = ((-(x_81) * 1.980000019f) + 1.980100036f);
  let x_88 : f32 = u_xlat2.x;
  let x_90 : f32 = u_xlat2.x;
  u_xlat0.y = ((x_88 * x_90) + 1.0f);
  let x_96 : vec4<f32> = u_xlat0;
  let x_101 : vec2<f32> = (vec2<f32>(x_96.x, x_96.y) * vec2<f32>(10.0f, 0.010016442f));
  let x_102 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_101.x, x_101.y, x_102.z, x_102.w);
  let x_104 : f32 = u_xlat6;
  u_xlat6 = log2(x_104);
  let x_106 : f32 = u_xlat6;
  let x_108 : f32 = u_xlat0.x;
  u_xlat0.x = (x_106 * x_108);
  let x_112 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_112);
  let x_116 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_116, 0.0001f);
  let x_121 : f32 = u_xlat0.y;
  let x_123 : f32 = u_xlat0.x;
  u_xlat0.x = (x_121 / x_123);
  let x_127 : f32 = u_xlat2.y;
  u_xlat2.x = (x_127 * 50.0f);
  let x_132 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_132, 0.0f, 1.0f);
  let x_139 : f32 = u_xlat2.y;
  u_xlatb4 = (x_139 < 0.0f);
  let x_143 : vec3<f32> = vs_TEXCOORD1;
  let x_145 : vec3<f32> = vs_TEXCOORD2;
  u_xlat1 = (x_143 + -(x_145));
  let x_148 : vec3<f32> = u_xlat2;
  let x_150 : vec3<f32> = u_xlat1;
  let x_152 : vec3<f32> = vs_TEXCOORD2;
  u_xlat1 = ((vec3<f32>(x_148.x, x_148.x, x_148.x) * x_150) + x_152);
  let x_155 : vec3<f32> = vs_TEXCOORD3;
  let x_156 : vec4<f32> = u_xlat0;
  let x_159 : vec3<f32> = u_xlat1;
  let x_160 : vec3<f32> = ((x_155 * vec3<f32>(x_156.x, x_156.x, x_156.x)) + x_159);
  let x_161 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_160.x, x_160.y, x_161.z, x_160.z);
  let x_165 : bool = u_xlatb4;
  if (x_165) {
    let x_170 : vec4<f32> = u_xlat0;
    x_167 = vec3<f32>(x_170.x, x_170.y, x_170.w);
  } else {
    let x_173 : vec3<f32> = u_xlat1;
    x_167 = x_173;
  }
  let x_174 : vec3<f32> = x_167;
  let x_175 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_174.x, x_174.y, x_174.z, x_175.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec3<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(3) vs_TEXCOORD3_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

