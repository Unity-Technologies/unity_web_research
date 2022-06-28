struct PGlobals {
  x_NitsForPaperWhite : f32,
  x_ColorGamut : i32,
}

var<private> u_xlat0 : vec3<f32>;

@group(0) @binding(0) var<uniform> x_13 : PGlobals;

var<private> u_xlat1 : vec4<f32>;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(2) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> u_xlat2 : vec3<f32>;

var<private> u_xlatb12 : bool;

var<private> u_xlatb3 : vec3<bool>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_118 : vec3<f32>;
  var hlslcc_movcTemp : vec4<f32>;
  var x_174 : f32;
  var x_186 : f32;
  var x_198 : f32;
  var x_212 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_17 : f32 = x_13.x_NitsForPaperWhite;
  u_xlat0.x = (x_17 * 0.0001f);
  let x_40 : vec2<f32> = vs_TEXCOORD0;
  let x_41 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_40);
  u_xlat1 = x_41;
  let x_47 : vec4<f32> = u_xlat1;
  u_xlat2.x = dot(vec3<f32>(0.627402008f, 0.329291999f, 0.043306001f), vec3<f32>(x_47.x, x_47.y, x_47.z));
  let x_55 : vec4<f32> = u_xlat1;
  u_xlat2.y = dot(vec3<f32>(0.069095001f, 0.919543982f, 0.01136f), vec3<f32>(x_55.x, x_55.y, x_55.z));
  let x_64 : vec4<f32> = u_xlat1;
  u_xlat2.z = dot(vec3<f32>(0.016394001f, 0.088027999f, 0.895578027f), vec3<f32>(x_64.x, x_64.y, x_64.z));
  let x_69 : vec3<f32> = u_xlat0;
  let x_71 : vec3<f32> = u_xlat2;
  u_xlat0 = (vec3<f32>(x_69.x, x_69.x, x_69.x) * x_71);
  let x_73 : vec3<f32> = u_xlat0;
  u_xlat0 = log2(abs(x_73));
  let x_76 : vec3<f32> = u_xlat0;
  u_xlat0 = (x_76 * vec3<f32>(0.159301758f, 0.159301758f, 0.159301758f));
  let x_80 : vec3<f32> = u_xlat0;
  u_xlat0 = exp2(x_80);
  let x_82 : vec3<f32> = u_xlat0;
  u_xlat2 = ((x_82 * vec3<f32>(18.8515625f, 18.8515625f, 18.8515625f)) + vec3<f32>(0.8359375f, 0.8359375f, 0.8359375f));
  let x_89 : vec3<f32> = u_xlat0;
  u_xlat0 = ((x_89 * vec3<f32>(18.6875f, 18.6875f, 18.6875f)) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_96 : vec3<f32> = u_xlat2;
  let x_97 : vec3<f32> = u_xlat0;
  u_xlat0 = (x_96 / x_97);
  let x_99 : vec3<f32> = u_xlat0;
  u_xlat0 = log2(x_99);
  let x_101 : vec3<f32> = u_xlat0;
  u_xlat0 = (x_101 * vec3<f32>(78.84375f, 78.84375f, 78.84375f));
  let x_105 : vec3<f32> = u_xlat0;
  u_xlat0 = exp2(x_105);
  let x_113 : i32 = x_13.x_ColorGamut;
  u_xlatb12 = (x_113 == 4i);
  let x_116 : bool = u_xlatb12;
  if (x_116) {
    let x_121 : vec3<f32> = u_xlat0;
    x_118 = x_121;
  } else {
    let x_123 : vec4<f32> = u_xlat1;
    x_118 = vec3<f32>(x_123.x, x_123.y, x_123.z);
  }
  let x_125 : vec3<f32> = x_118;
  u_xlat0 = x_125;
  let x_126 : vec4<f32> = u_xlat1;
  u_xlat2 = log2(abs(vec3<f32>(x_126.x, x_126.y, x_126.z)));
  let x_130 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_130 * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_134 : vec3<f32> = u_xlat2;
  u_xlat2 = exp2(x_134);
  let x_136 : vec3<f32> = u_xlat2;
  u_xlat2 = ((x_136 * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_146 : vec4<f32> = u_xlat1;
  let x_152 : vec4<bool> = (vec4<f32>(x_146.x, x_146.y, x_146.z, x_146.x) < vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f));
  u_xlatb3 = vec3<bool>(x_152.x, x_152.y, x_152.z);
  let x_154 : vec4<f32> = u_xlat1;
  let x_158 : vec3<f32> = (vec3<f32>(x_154.x, x_154.y, x_154.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_159 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_158.x, x_158.y, x_158.z, x_159.w);
  let x_165 : f32 = u_xlat1.w;
  SV_Target0.w = x_165;
  let x_170 : vec4<f32> = u_xlat1;
  hlslcc_movcTemp = x_170;
  let x_172 : bool = u_xlatb3.x;
  if (x_172) {
    let x_178 : f32 = u_xlat1.x;
    x_174 = x_178;
  } else {
    let x_181 : f32 = u_xlat2.x;
    x_174 = x_181;
  }
  let x_182 : f32 = x_174;
  hlslcc_movcTemp.x = x_182;
  let x_185 : bool = u_xlatb3.y;
  if (x_185) {
    let x_190 : f32 = u_xlat1.y;
    x_186 = x_190;
  } else {
    let x_193 : f32 = u_xlat2.y;
    x_186 = x_193;
  }
  let x_194 : f32 = x_186;
  hlslcc_movcTemp.y = x_194;
  let x_197 : bool = u_xlatb3.z;
  if (x_197) {
    let x_202 : f32 = u_xlat1.z;
    x_198 = x_202;
  } else {
    let x_205 : f32 = u_xlat2.z;
    x_198 = x_205;
  }
  let x_206 : f32 = x_198;
  hlslcc_movcTemp.z = x_206;
  let x_208 : vec4<f32> = hlslcc_movcTemp;
  u_xlat1 = x_208;
  let x_210 : i32 = x_13.x_ColorGamut;
  if ((x_210 != 0i)) {
    let x_215 : vec3<f32> = u_xlat0;
    x_212 = x_215;
  } else {
    let x_217 : vec4<f32> = u_xlat1;
    x_212 = vec3<f32>(x_217.x, x_217.y, x_217.z);
  }
  let x_219 : vec3<f32> = x_212;
  let x_220 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_219.x, x_219.y, x_219.z, x_220.w);
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

