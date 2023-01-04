struct PGlobals {
  x_UnderlayColor : vec4<f32>,
  x_ClipRect : vec4<f32>,
}

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(2) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec2<f32>;

var<private> u_xlat1 : vec4<f32>;

@group(0) @binding(0) var<uniform> x_55 : PGlobals;

var<private> vs_COLOR0 : vec4<f32>;

var<private> vs_COLOR1 : vec4<f32>;

var<private> u_xlat2 : vec2<f32>;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> u_xlatb0 : bool;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec4<f32> = vs_TEXCOORD3;
  let x_25 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_23.x, x_23.y));
  u_xlat0.x = x_25.w;
  let x_33 : f32 = u_xlat0.x;
  let x_38 : f32 = vs_TEXCOORD4.x;
  let x_42 : f32 = vs_TEXCOORD4.y;
  u_xlat0.x = ((x_33 * x_38) + -(x_42));
  let x_47 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_47, 0.0f, 1.0f);
  let x_61 : vec4<f32> = x_55.x_UnderlayColor;
  let x_64 : vec4<f32> = x_55.x_UnderlayColor;
  let x_66 : vec3<f32> = (vec3<f32>(x_61.w, x_61.w, x_61.w) * vec3<f32>(x_64.x, x_64.y, x_64.z));
  let x_67 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_66.x, x_66.y, x_66.z, x_67.w);
  let x_71 : f32 = x_55.x_UnderlayColor.w;
  u_xlat1.w = x_71;
  let x_73 : vec4<f32> = u_xlat0;
  let x_75 : vec4<f32> = u_xlat1;
  u_xlat0 = (vec4<f32>(x_73.x, x_73.x, x_73.x, x_73.x) * x_75);
  let x_78 : vec4<f32> = vs_COLOR0;
  let x_80 : vec4<f32> = vs_COLOR1;
  u_xlat1 = (x_78 + -(x_80));
  let x_89 : vec4<f32> = vs_TEXCOORD0;
  let x_91 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_89.x, x_89.y));
  u_xlat2.x = x_91.w;
  let x_94 : vec2<f32> = u_xlat2;
  let x_97 : vec4<f32> = vs_TEXCOORD1;
  let x_100 : vec4<f32> = vs_TEXCOORD1;
  u_xlat2 = ((vec2<f32>(x_94.x, x_94.x) * vec2<f32>(x_97.x, x_97.x)) + -(vec2<f32>(x_100.z, x_100.y)));
  let x_104 : vec2<f32> = u_xlat2;
  u_xlat2 = clamp(x_104, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_108 : vec2<f32> = u_xlat2;
  let x_110 : vec4<f32> = u_xlat1;
  let x_112 : vec4<f32> = vs_COLOR1;
  u_xlat1 = ((vec4<f32>(x_108.x, x_108.x, x_108.x, x_108.x) * x_110) + x_112);
  let x_115 : vec2<f32> = u_xlat2;
  let x_117 : vec4<f32> = u_xlat1;
  u_xlat3 = (vec4<f32>(x_115.y, x_115.y, x_115.y, x_115.y) * x_117);
  let x_120 : f32 = u_xlat1.w;
  let x_123 : f32 = u_xlat2.y;
  u_xlat1.x = ((-(x_120) * x_123) + 1.0f);
  let x_127 : vec4<f32> = u_xlat0;
  let x_128 : vec4<f32> = u_xlat1;
  let x_131 : vec4<f32> = u_xlat3;
  u_xlat0 = ((x_127 * vec4<f32>(x_128.x, x_128.x, x_128.x, x_128.x)) + x_131);
  let x_135 : vec4<f32> = x_55.x_ClipRect;
  let x_139 : vec4<f32> = x_55.x_ClipRect;
  let x_141 : vec2<f32> = (-(vec2<f32>(x_135.x, x_135.y)) + vec2<f32>(x_139.z, x_139.w));
  let x_142 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_141.x, x_141.y, x_142.z, x_142.w);
  let x_144 : vec4<f32> = u_xlat1;
  let x_147 : vec4<f32> = vs_TEXCOORD2;
  let x_151 : vec2<f32> = (vec2<f32>(x_144.x, x_144.y) + -(abs(vec2<f32>(x_147.x, x_147.y))));
  let x_152 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_151.x, x_151.y, x_152.z, x_152.w);
  let x_154 : vec4<f32> = u_xlat1;
  let x_156 : vec4<f32> = vs_TEXCOORD2;
  let x_158 : vec2<f32> = (vec2<f32>(x_154.x, x_154.y) * vec2<f32>(x_156.z, x_156.w));
  let x_159 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_158.x, x_158.y, x_159.z, x_159.w);
  let x_161 : vec4<f32> = u_xlat1;
  let x_165 : vec2<f32> = clamp(vec2<f32>(x_161.x, x_161.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_166 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_165.x, x_165.y, x_166.z, x_166.w);
  let x_169 : f32 = u_xlat1.y;
  let x_171 : f32 = u_xlat1.x;
  u_xlat1.x = (x_169 * x_171);
  let x_174 : vec4<f32> = u_xlat0;
  let x_175 : vec4<f32> = u_xlat1;
  u_xlat0 = (x_174 * vec4<f32>(x_175.x, x_175.x, x_175.x, x_175.x));
  let x_179 : f32 = u_xlat0.w;
  let x_182 : f32 = vs_TEXCOORD3.z;
  u_xlat1.x = ((x_179 * x_182) + -0.001f);
  let x_187 : vec4<f32> = u_xlat0;
  let x_188 : vec4<f32> = vs_TEXCOORD3;
  u_xlat0 = (x_187 * vec4<f32>(x_188.z, x_188.z, x_188.z, x_188.z));
  let x_193 : vec4<f32> = u_xlat0;
  SV_Target0 = x_193;
  let x_198 : f32 = u_xlat1.x;
  u_xlatb0 = (x_198 < 0.0f);
  let x_200 : bool = u_xlatb0;
  if (((select(0i, 1i, x_200) * -1i) != 0i)) {
    discard;
  }
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(5) vs_TEXCOORD3_param : vec4<f32>, @location(6) vs_TEXCOORD4_param : vec2<f32>, @location(0) vs_COLOR0_param : vec4<f32>, @location(1) vs_COLOR1_param : vec4<f32>, @location(2) vs_TEXCOORD0_param : vec4<f32>, @location(3) vs_TEXCOORD1_param : vec4<f32>, @location(4) vs_TEXCOORD2_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_COLOR0 = vs_COLOR0_param;
  vs_COLOR1 = vs_COLOR1_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

