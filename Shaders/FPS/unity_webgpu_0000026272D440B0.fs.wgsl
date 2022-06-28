struct PGlobals {
  x_Dithering_Coords : vec4<f32>,
}

var<private> u_xlat0 : vec3<f32>;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(0) @binding(0) var<uniform> x_17 : PGlobals;

@group(0) @binding(1) var x_DitheringTex : texture_2d<f32>;

@group(0) @binding(3) var sampler_DitheringTex : sampler;

var<private> u_xlat3 : vec3<f32>;

var<private> u_xlat1 : vec4<f32>;

@group(0) @binding(2) var x_MainTex : texture_2d<f32>;

@group(0) @binding(4) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

var<private> u_xlat2 : vec3<f32>;

var<private> u_xlatb1 : vec3<bool>;

var<private> SV_Target0 : vec4<f32>;

var<private> u_xlatb0 : vec3<bool>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var hlslcc_movcTemp : vec3<f32>;
  var x_158 : f32;
  var x_171 : f32;
  var x_184 : f32;
  var x_251 : f32;
  var x_263 : f32;
  var x_275 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec2<f32> = vs_TEXCOORD0;
  let x_22 : vec4<f32> = x_17.x_Dithering_Coords;
  let x_26 : vec4<f32> = x_17.x_Dithering_Coords;
  let x_28 : vec2<f32> = ((x_13 * vec2<f32>(x_22.x, x_22.y)) + vec2<f32>(x_26.z, x_26.w));
  let x_29 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_28.x, x_28.y, x_29.z);
  let x_41 : vec3<f32> = u_xlat0;
  let x_43 : vec4<f32> = textureSample(x_DitheringTex, sampler_DitheringTex, vec2<f32>(x_41.x, x_41.y));
  u_xlat0.x = x_43.w;
  let x_51 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_51 * 2.0f) + -1.0f);
  let x_59 : f32 = u_xlat0.x;
  u_xlat3.x = (-(abs(x_59)) + 1.0f);
  let x_66 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_66 * 340282346638528859811704183484516925440.0f) + 0.5f);
  let x_73 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_73, 0.0f, 1.0f);
  let x_78 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_78 * 2.0f) + -1.0f);
  let x_83 : f32 = u_xlat3.x;
  u_xlat3.x = sqrt(x_83);
  let x_87 : f32 = u_xlat3.x;
  u_xlat3.x = (-(x_87) + 1.0f);
  let x_92 : f32 = u_xlat3.x;
  let x_94 : f32 = u_xlat0.x;
  u_xlat0.x = (x_92 * x_94);
  let x_105 : vec2<f32> = vs_TEXCOORD1;
  let x_106 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_105);
  u_xlat1 = x_106;
  let x_107 : vec4<f32> = u_xlat1;
  u_xlat3 = max(abs(vec3<f32>(x_107.x, x_107.y, x_107.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_113 : vec3<f32> = u_xlat3;
  u_xlat3 = log2(x_113);
  let x_115 : vec3<f32> = u_xlat3;
  u_xlat3 = (x_115 * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_119 : vec3<f32> = u_xlat3;
  u_xlat3 = exp2(x_119);
  let x_121 : vec3<f32> = u_xlat3;
  u_xlat3 = ((x_121 * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_129 : vec4<f32> = u_xlat1;
  u_xlat2 = (vec3<f32>(x_129.x, x_129.y, x_129.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_140 : vec4<f32> = u_xlat1;
  let x_143 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_140.x, x_140.y, x_140.z, x_140.x));
  u_xlatb1 = vec3<bool>(x_143.x, x_143.y, x_143.z);
  let x_148 : f32 = u_xlat1.w;
  SV_Target0.w = x_148;
  let x_153 : vec3<f32> = u_xlat3;
  hlslcc_movcTemp = x_153;
  let x_156 : bool = u_xlatb1.x;
  if (x_156) {
    let x_162 : f32 = u_xlat2.x;
    x_158 = x_162;
  } else {
    let x_165 : f32 = u_xlat3.x;
    x_158 = x_165;
  }
  let x_166 : f32 = x_158;
  hlslcc_movcTemp.x = x_166;
  let x_170 : bool = u_xlatb1.y;
  if (x_170) {
    let x_175 : f32 = u_xlat2.y;
    x_171 = x_175;
  } else {
    let x_178 : f32 = u_xlat3.y;
    x_171 = x_178;
  }
  let x_179 : f32 = x_171;
  hlslcc_movcTemp.y = x_179;
  let x_183 : bool = u_xlatb1.z;
  if (x_183) {
    let x_188 : f32 = u_xlat2.z;
    x_184 = x_188;
  } else {
    let x_191 : f32 = u_xlat3.z;
    x_184 = x_191;
  }
  let x_192 : f32 = x_184;
  hlslcc_movcTemp.z = x_192;
  let x_194 : vec3<f32> = hlslcc_movcTemp;
  u_xlat3 = x_194;
  let x_195 : vec3<f32> = u_xlat0;
  let x_200 : vec3<f32> = u_xlat3;
  u_xlat0 = ((vec3<f32>(x_195.x, x_195.x, x_195.x) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + x_200);
  let x_202 : vec3<f32> = u_xlat0;
  let x_205 : vec3<f32> = (x_202 + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_206 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_205.x, x_205.y, x_205.z, x_206.w);
  let x_208 : vec4<f32> = u_xlat1;
  let x_212 : vec3<f32> = (vec3<f32>(x_208.x, x_208.y, x_208.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_213 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_212.x, x_212.y, x_212.z, x_213.w);
  let x_215 : vec4<f32> = u_xlat1;
  let x_218 : vec3<f32> = max(abs(vec3<f32>(x_215.x, x_215.y, x_215.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_219 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_218.x, x_218.y, x_218.z, x_219.w);
  let x_221 : vec4<f32> = u_xlat1;
  let x_223 : vec3<f32> = log2(vec3<f32>(x_221.x, x_221.y, x_221.z));
  let x_224 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_223.x, x_223.y, x_223.z, x_224.w);
  let x_226 : vec4<f32> = u_xlat1;
  let x_230 : vec3<f32> = (vec3<f32>(x_226.x, x_226.y, x_226.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_231 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_230.x, x_230.y, x_230.z, x_231.w);
  let x_233 : vec4<f32> = u_xlat1;
  let x_235 : vec3<f32> = exp2(vec3<f32>(x_233.x, x_233.y, x_233.z));
  let x_236 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_235.x, x_235.y, x_235.z, x_236.w);
  let x_238 : vec3<f32> = u_xlat0;
  u_xlat2 = (x_238 * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_245 : vec3<f32> = u_xlat0;
  let x_247 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_245.x, x_245.y, x_245.z, x_245.x));
  u_xlatb0 = vec3<bool>(x_247.x, x_247.y, x_247.z);
  let x_250 : bool = u_xlatb0.x;
  if (x_250) {
    let x_255 : f32 = u_xlat2.x;
    x_251 = x_255;
  } else {
    let x_258 : f32 = u_xlat1.x;
    x_251 = x_258;
  }
  let x_259 : f32 = x_251;
  SV_Target0.x = x_259;
  let x_262 : bool = u_xlatb0.y;
  if (x_262) {
    let x_267 : f32 = u_xlat2.y;
    x_263 = x_267;
  } else {
    let x_270 : f32 = u_xlat1.y;
    x_263 = x_270;
  }
  let x_271 : f32 = x_263;
  SV_Target0.y = x_271;
  let x_274 : bool = u_xlatb0.z;
  if (x_274) {
    let x_279 : f32 = u_xlat2.z;
    x_275 = x_279;
  } else {
    let x_282 : f32 = u_xlat1.z;
    x_275 = x_282;
  }
  let x_283 : f32 = x_275;
  SV_Target0.z = x_283;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @location(1) vs_TEXCOORD1_param : vec2<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

