struct PGlobals {
  x_NitsForPaperWhite : f32,
  x_ColorGamut : i32,
}

@group(1) @binding(0) var<uniform> x_13 : PGlobals;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(1) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec3<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec3<f32>;
  var u_xlatb12 : bool;
  var x_117 : vec3<f32>;
  var u_xlatb3 : vec3<bool>;
  var hlslcc_movcTemp : vec4<f32>;
  var x_171 : f32;
  var x_183 : f32;
  var x_195 : f32;
  var x_209 : vec3<f32>;
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
    let x_120 : vec3<f32> = u_xlat0;
    x_117 = x_120;
  } else {
    let x_122 : vec4<f32> = u_xlat1;
    x_117 = vec3<f32>(x_122.x, x_122.y, x_122.z);
  }
  let x_124 : vec3<f32> = x_117;
  u_xlat0 = x_124;
  let x_125 : vec4<f32> = u_xlat1;
  u_xlat2 = log2(abs(vec3<f32>(x_125.x, x_125.y, x_125.z)));
  let x_129 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_129 * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_133 : vec3<f32> = u_xlat2;
  u_xlat2 = exp2(x_133);
  let x_135 : vec3<f32> = u_xlat2;
  u_xlat2 = ((x_135 * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_145 : vec4<f32> = u_xlat1;
  let x_151 : vec4<bool> = (vec4<f32>(x_145.x, x_145.y, x_145.z, x_145.x) < vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f));
  u_xlatb3 = vec3<bool>(x_151.x, x_151.y, x_151.z);
  let x_153 : vec4<f32> = u_xlat1;
  let x_157 : vec3<f32> = (vec3<f32>(x_153.x, x_153.y, x_153.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_158 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_157.x, x_157.y, x_157.z, x_158.w);
  let x_164 : f32 = u_xlat1.w;
  SV_Target0.w = x_164;
  let x_168 : vec4<f32> = u_xlat1;
  hlslcc_movcTemp = x_168;
  let x_170 : bool = u_xlatb3.x;
  if (x_170) {
    let x_175 : f32 = u_xlat1.x;
    x_171 = x_175;
  } else {
    let x_178 : f32 = u_xlat2.x;
    x_171 = x_178;
  }
  let x_179 : f32 = x_171;
  hlslcc_movcTemp.x = x_179;
  let x_182 : bool = u_xlatb3.y;
  if (x_182) {
    let x_187 : f32 = u_xlat1.y;
    x_183 = x_187;
  } else {
    let x_190 : f32 = u_xlat2.y;
    x_183 = x_190;
  }
  let x_191 : f32 = x_183;
  hlslcc_movcTemp.y = x_191;
  let x_194 : bool = u_xlatb3.z;
  if (x_194) {
    let x_199 : f32 = u_xlat1.z;
    x_195 = x_199;
  } else {
    let x_202 : f32 = u_xlat2.z;
    x_195 = x_202;
  }
  let x_203 : f32 = x_195;
  hlslcc_movcTemp.z = x_203;
  let x_205 : vec4<f32> = hlslcc_movcTemp;
  u_xlat1 = x_205;
  let x_207 : i32 = x_13.x_ColorGamut;
  if ((x_207 != 0i)) {
    let x_212 : vec3<f32> = u_xlat0;
    x_209 = x_212;
  } else {
    let x_214 : vec4<f32> = u_xlat1;
    x_209 = vec3<f32>(x_214.x, x_214.y, x_214.z);
  }
  let x_216 : vec3<f32> = x_209;
  let x_217 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_216.x, x_216.y, x_216.z, x_217.w);
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

