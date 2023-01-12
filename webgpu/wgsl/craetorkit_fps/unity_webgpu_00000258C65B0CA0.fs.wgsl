struct PGlobals {
  x_Dithering_Coords : vec4<f32>,
}

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_17 : PGlobals;

@group(0) @binding(0) var x_DitheringTex : texture_2d<f32>;

@group(0) @binding(3) var sampler_DitheringTex : sampler;

@group(0) @binding(2) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(5) var sampler_AutoExposureTex : sampler;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(4) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec3<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec3<f32>;
  var u_xlatb3 : vec3<bool>;
  var x_180 : f32;
  var x_193 : f32;
  var x_206 : f32;
  var u_xlatb0 : vec3<bool>;
  var x_272 : f32;
  var x_284 : f32;
  var x_296 : f32;
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
  let x_102 : vec2<f32> = vs_TEXCOORD0;
  let x_103 : vec4<f32> = textureSample(x_AutoExposureTex, sampler_AutoExposureTex, x_102);
  u_xlat3.x = x_103.x;
  let x_114 : vec2<f32> = vs_TEXCOORD1;
  let x_115 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_114);
  u_xlat1 = x_115;
  let x_116 : vec3<f32> = u_xlat3;
  let x_118 : vec4<f32> = u_xlat1;
  u_xlat3 = (vec3<f32>(x_116.x, x_116.x, x_116.x) * vec3<f32>(x_118.x, x_118.y, x_118.z));
  let x_124 : f32 = u_xlat1.w;
  SV_Target0.w = x_124;
  let x_127 : vec3<f32> = u_xlat3;
  let x_131 : vec3<f32> = max(abs(x_127), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_132 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_131.x, x_131.y, x_131.z, x_132.w);
  let x_134 : vec4<f32> = u_xlat1;
  let x_136 : vec3<f32> = log2(vec3<f32>(x_134.x, x_134.y, x_134.z));
  let x_137 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_136.x, x_136.y, x_136.z, x_137.w);
  let x_139 : vec4<f32> = u_xlat1;
  let x_143 : vec3<f32> = (vec3<f32>(x_139.x, x_139.y, x_139.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_144 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_143.x, x_143.y, x_143.z, x_144.w);
  let x_146 : vec4<f32> = u_xlat1;
  let x_148 : vec3<f32> = exp2(vec3<f32>(x_146.x, x_146.y, x_146.z));
  let x_149 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_148.x, x_148.y, x_148.z, x_149.w);
  let x_151 : vec4<f32> = u_xlat1;
  let x_158 : vec3<f32> = ((vec3<f32>(x_151.x, x_151.y, x_151.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_159 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_158.x, x_158.y, x_158.z, x_159.w);
  let x_162 : vec3<f32> = u_xlat3;
  u_xlat2 = (x_162 * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_172 : vec3<f32> = u_xlat3;
  let x_175 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0031308f) >= vec4<f32>(x_172.x, x_172.y, x_172.z, x_172.z));
  u_xlatb3 = vec3<bool>(x_175.x, x_175.y, x_175.z);
  let x_179 : bool = u_xlatb3.x;
  if (x_179) {
    let x_184 : f32 = u_xlat2.x;
    x_180 = x_184;
  } else {
    let x_187 : f32 = u_xlat1.x;
    x_180 = x_187;
  }
  let x_188 : f32 = x_180;
  u_xlat3.x = x_188;
  let x_192 : bool = u_xlatb3.y;
  if (x_192) {
    let x_197 : f32 = u_xlat2.y;
    x_193 = x_197;
  } else {
    let x_200 : f32 = u_xlat1.y;
    x_193 = x_200;
  }
  let x_201 : f32 = x_193;
  u_xlat3.y = x_201;
  let x_205 : bool = u_xlatb3.z;
  if (x_205) {
    let x_210 : f32 = u_xlat2.z;
    x_206 = x_210;
  } else {
    let x_213 : f32 = u_xlat1.z;
    x_206 = x_213;
  }
  let x_214 : f32 = x_206;
  u_xlat3.z = x_214;
  let x_216 : vec3<f32> = u_xlat0;
  let x_221 : vec3<f32> = u_xlat3;
  u_xlat0 = ((vec3<f32>(x_216.x, x_216.x, x_216.x) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + x_221);
  let x_223 : vec3<f32> = u_xlat0;
  let x_226 : vec3<f32> = (x_223 + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_227 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_226.x, x_226.y, x_226.z, x_227.w);
  let x_229 : vec4<f32> = u_xlat1;
  let x_233 : vec3<f32> = (vec3<f32>(x_229.x, x_229.y, x_229.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_234 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_233.x, x_233.y, x_233.z, x_234.w);
  let x_236 : vec4<f32> = u_xlat1;
  let x_239 : vec3<f32> = max(abs(vec3<f32>(x_236.x, x_236.y, x_236.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_240 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_239.x, x_239.y, x_239.z, x_240.w);
  let x_242 : vec4<f32> = u_xlat1;
  let x_244 : vec3<f32> = log2(vec3<f32>(x_242.x, x_242.y, x_242.z));
  let x_245 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_244.x, x_244.y, x_244.z, x_245.w);
  let x_247 : vec4<f32> = u_xlat1;
  let x_251 : vec3<f32> = (vec3<f32>(x_247.x, x_247.y, x_247.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_252 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_251.x, x_251.y, x_251.z, x_252.w);
  let x_254 : vec4<f32> = u_xlat1;
  let x_256 : vec3<f32> = exp2(vec3<f32>(x_254.x, x_254.y, x_254.z));
  let x_257 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_256.x, x_256.y, x_256.z, x_257.w);
  let x_259 : vec3<f32> = u_xlat0;
  u_xlat2 = (x_259 * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_266 : vec3<f32> = u_xlat0;
  let x_268 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_266.x, x_266.y, x_266.z, x_266.x));
  u_xlatb0 = vec3<bool>(x_268.x, x_268.y, x_268.z);
  let x_271 : bool = u_xlatb0.x;
  if (x_271) {
    let x_276 : f32 = u_xlat2.x;
    x_272 = x_276;
  } else {
    let x_279 : f32 = u_xlat1.x;
    x_272 = x_279;
  }
  let x_280 : f32 = x_272;
  SV_Target0.x = x_280;
  let x_283 : bool = u_xlatb0.y;
  if (x_283) {
    let x_288 : f32 = u_xlat2.y;
    x_284 = x_288;
  } else {
    let x_291 : f32 = u_xlat1.y;
    x_284 = x_291;
  }
  let x_292 : f32 = x_284;
  SV_Target0.y = x_292;
  let x_295 : bool = u_xlatb0.z;
  if (x_295) {
    let x_300 : f32 = u_xlat2.z;
    x_296 = x_300;
  } else {
    let x_303 : f32 = u_xlat1.z;
    x_296 = x_303;
  }
  let x_304 : f32 = x_296;
  SV_Target0.z = x_304;
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

