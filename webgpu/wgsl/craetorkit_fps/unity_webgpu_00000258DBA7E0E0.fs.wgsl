struct PGlobals {
  x_Dithering_Coords : vec4<f32>,
  x_Lut3D_Params : vec2<f32>,
  x_PostExposure : f32,
}

@group(0) @binding(2) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(6) var sampler_AutoExposureTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(5) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_50 : PGlobals;

var<private> SV_Target0 : vec4<f32>;

@group(0) @binding(3) var x_Lut3D : texture_3d<f32>;

@group(0) @binding(7) var sampler_Lut3D : sampler;

@group(0) @binding(0) var x_DitheringTex : texture_2d<f32>;

@group(0) @binding(4) var sampler_DitheringTex : sampler;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat9 : f32;
  var u_xlat2 : vec3<f32>;
  var u_xlatb0 : vec3<bool>;
  var x_206 : f32;
  var x_219 : f32;
  var x_232 : f32;
  var x_356 : f32;
  var x_368 : f32;
  var x_380 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD0;
  let x_24 : vec4<f32> = textureSample(x_AutoExposureTex, sampler_AutoExposureTex, x_23);
  u_xlat0.x = x_24.x;
  let x_37 : vec2<f32> = vs_TEXCOORD1;
  let x_38 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_37);
  u_xlat1 = x_38;
  let x_40 : vec4<f32> = u_xlat0;
  let x_42 : vec4<f32> = u_xlat1;
  let x_44 : vec3<f32> = (vec3<f32>(x_40.x, x_40.x, x_40.x) * vec3<f32>(x_42.x, x_42.y, x_42.z));
  let x_45 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_44.x, x_44.y, x_44.z, x_45.w);
  let x_47 : vec4<f32> = u_xlat1;
  let x_55 : f32 = x_50.x_PostExposure;
  let x_57 : f32 = x_50.x_PostExposure;
  let x_59 : f32 = x_50.x_PostExposure;
  let x_61 : f32 = x_50.x_PostExposure;
  let x_62 : vec4<f32> = vec4<f32>(x_55, x_57, x_59, x_61);
  u_xlat0 = (x_47 * vec4<f32>(x_62.x, x_62.y, x_62.z, x_62.w));
  let x_69 : vec4<f32> = u_xlat0;
  let x_76 : vec3<f32> = ((vec3<f32>(x_69.x, x_69.y, x_69.z) * vec3<f32>(5.55555582f, 5.55555582f, 5.55555582f)) + vec3<f32>(0.047995999f, 0.047995999f, 0.047995999f));
  let x_77 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_76.x, x_76.y, x_76.z, x_77.w);
  let x_83 : f32 = u_xlat0.w;
  SV_Target0.w = x_83;
  let x_86 : vec4<f32> = u_xlat0;
  let x_88 : vec3<f32> = log2(vec3<f32>(x_86.x, x_86.y, x_86.z));
  let x_89 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_88.x, x_88.y, x_88.z, x_89.w);
  let x_91 : vec4<f32> = u_xlat0;
  let x_98 : vec3<f32> = ((vec3<f32>(x_91.x, x_91.y, x_91.z) * vec3<f32>(0.073499784f, 0.073499784f, 0.073499784f)) + vec3<f32>(0.386036009f, 0.386036009f, 0.386036009f));
  let x_99 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_98.x, x_98.y, x_98.z, x_99.w);
  let x_101 : vec4<f32> = u_xlat0;
  let x_107 : vec3<f32> = clamp(vec3<f32>(x_101.x, x_101.y, x_101.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_108 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_107.x, x_107.y, x_107.z, x_108.w);
  let x_110 : vec4<f32> = u_xlat0;
  let x_115 : vec2<f32> = x_50.x_Lut3D_Params;
  let x_117 : vec3<f32> = (vec3<f32>(x_110.x, x_110.y, x_110.z) * vec3<f32>(x_115.y, x_115.y, x_115.y));
  let x_118 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_117.x, x_117.y, x_117.z, x_118.w);
  let x_122 : f32 = x_50.x_Lut3D_Params.x;
  u_xlat9 = (x_122 * 0.5f);
  let x_125 : vec4<f32> = u_xlat0;
  let x_128 : vec2<f32> = x_50.x_Lut3D_Params;
  let x_131 : f32 = u_xlat9;
  let x_133 : vec3<f32> = ((vec3<f32>(x_125.x, x_125.y, x_125.z) * vec3<f32>(x_128.x, x_128.x, x_128.x)) + vec3<f32>(x_131, x_131, x_131));
  let x_134 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_133.x, x_133.y, x_133.z, x_134.w);
  let x_144 : vec4<f32> = u_xlat0;
  let x_146 : vec4<f32> = textureSample(x_Lut3D, sampler_Lut3D, vec3<f32>(x_144.x, x_144.y, x_144.z));
  let x_147 : vec3<f32> = vec3<f32>(x_146.x, x_146.y, x_146.z);
  let x_148 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_147.x, x_147.y, x_147.z, x_148.w);
  let x_150 : vec4<f32> = u_xlat0;
  let x_155 : vec3<f32> = max(abs(vec3<f32>(x_150.x, x_150.y, x_150.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_156 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_155.x, x_155.y, x_155.z, x_156.w);
  let x_158 : vec4<f32> = u_xlat1;
  let x_160 : vec3<f32> = log2(vec3<f32>(x_158.x, x_158.y, x_158.z));
  let x_161 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_160.x, x_160.y, x_160.z, x_161.w);
  let x_163 : vec4<f32> = u_xlat1;
  let x_167 : vec3<f32> = (vec3<f32>(x_163.x, x_163.y, x_163.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_168 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_167.x, x_167.y, x_167.z, x_168.w);
  let x_170 : vec4<f32> = u_xlat1;
  let x_172 : vec3<f32> = exp2(vec3<f32>(x_170.x, x_170.y, x_170.z));
  let x_173 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_172.x, x_172.y, x_172.z, x_173.w);
  let x_175 : vec4<f32> = u_xlat1;
  let x_182 : vec3<f32> = ((vec3<f32>(x_175.x, x_175.y, x_175.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_183 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_182.x, x_182.y, x_182.z, x_183.w);
  let x_187 : vec4<f32> = u_xlat0;
  u_xlat2 = (vec3<f32>(x_187.x, x_187.y, x_187.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_198 : vec4<f32> = u_xlat0;
  let x_201 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_198.x, x_198.y, x_198.z, x_198.x));
  u_xlatb0 = vec3<bool>(x_201.x, x_201.y, x_201.z);
  let x_205 : bool = u_xlatb0.x;
  if (x_205) {
    let x_210 : f32 = u_xlat2.x;
    x_206 = x_210;
  } else {
    let x_213 : f32 = u_xlat1.x;
    x_206 = x_213;
  }
  let x_214 : f32 = x_206;
  u_xlat0.x = x_214;
  let x_218 : bool = u_xlatb0.y;
  if (x_218) {
    let x_223 : f32 = u_xlat2.y;
    x_219 = x_223;
  } else {
    let x_226 : f32 = u_xlat1.y;
    x_219 = x_226;
  }
  let x_227 : f32 = x_219;
  u_xlat0.y = x_227;
  let x_231 : bool = u_xlatb0.z;
  if (x_231) {
    let x_236 : f32 = u_xlat2.z;
    x_232 = x_236;
  } else {
    let x_239 : f32 = u_xlat1.z;
    x_232 = x_239;
  }
  let x_240 : f32 = x_232;
  u_xlat0.z = x_240;
  let x_242 : vec2<f32> = vs_TEXCOORD0;
  let x_246 : vec4<f32> = x_50.x_Dithering_Coords;
  let x_250 : vec4<f32> = x_50.x_Dithering_Coords;
  let x_252 : vec2<f32> = ((x_242 * vec2<f32>(x_246.x, x_246.y)) + vec2<f32>(x_250.z, x_250.w));
  let x_253 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_252.x, x_252.y, x_253.z, x_253.w);
  let x_260 : vec4<f32> = u_xlat1;
  let x_262 : vec4<f32> = textureSample(x_DitheringTex, sampler_DitheringTex, vec2<f32>(x_260.x, x_260.y));
  u_xlat9 = x_262.w;
  let x_264 : f32 = u_xlat9;
  u_xlat9 = ((x_264 * 2.0f) + -1.0f);
  let x_269 : f32 = u_xlat9;
  u_xlat1.x = (-(abs(x_269)) + 1.0f);
  let x_274 : f32 = u_xlat9;
  u_xlat9 = ((x_274 * 340282346638528859811704183484516925440.0f) + 0.5f);
  let x_278 : f32 = u_xlat9;
  u_xlat9 = clamp(x_278, 0.0f, 1.0f);
  let x_280 : f32 = u_xlat9;
  u_xlat9 = ((x_280 * 2.0f) + -1.0f);
  let x_284 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_284);
  let x_288 : f32 = u_xlat1.x;
  u_xlat1.x = (-(x_288) + 1.0f);
  let x_292 : f32 = u_xlat9;
  let x_294 : f32 = u_xlat1.x;
  u_xlat9 = (x_292 * x_294);
  let x_296 : f32 = u_xlat9;
  let x_301 : vec4<f32> = u_xlat0;
  let x_303 : vec3<f32> = ((vec3<f32>(x_296, x_296, x_296) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + vec3<f32>(x_301.x, x_301.y, x_301.z));
  let x_304 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_303.x, x_303.y, x_303.z, x_304.w);
  let x_306 : vec4<f32> = u_xlat0;
  let x_310 : vec3<f32> = (vec3<f32>(x_306.x, x_306.y, x_306.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_311 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_310.x, x_310.y, x_310.z, x_311.w);
  let x_313 : vec4<f32> = u_xlat1;
  let x_317 : vec3<f32> = (vec3<f32>(x_313.x, x_313.y, x_313.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_318 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_317.x, x_317.y, x_317.z, x_318.w);
  let x_320 : vec4<f32> = u_xlat1;
  let x_323 : vec3<f32> = max(abs(vec3<f32>(x_320.x, x_320.y, x_320.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_324 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_323.x, x_323.y, x_323.z, x_324.w);
  let x_326 : vec4<f32> = u_xlat1;
  let x_328 : vec3<f32> = log2(vec3<f32>(x_326.x, x_326.y, x_326.z));
  let x_329 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_328.x, x_328.y, x_328.z, x_329.w);
  let x_331 : vec4<f32> = u_xlat1;
  let x_335 : vec3<f32> = (vec3<f32>(x_331.x, x_331.y, x_331.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_336 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_335.x, x_335.y, x_335.z, x_336.w);
  let x_338 : vec4<f32> = u_xlat1;
  let x_340 : vec3<f32> = exp2(vec3<f32>(x_338.x, x_338.y, x_338.z));
  let x_341 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_340.x, x_340.y, x_340.z, x_341.w);
  let x_343 : vec4<f32> = u_xlat0;
  u_xlat2 = (vec3<f32>(x_343.x, x_343.y, x_343.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_350 : vec4<f32> = u_xlat0;
  let x_352 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_350.x, x_350.y, x_350.z, x_350.x));
  u_xlatb0 = vec3<bool>(x_352.x, x_352.y, x_352.z);
  let x_355 : bool = u_xlatb0.x;
  if (x_355) {
    let x_360 : f32 = u_xlat2.x;
    x_356 = x_360;
  } else {
    let x_363 : f32 = u_xlat1.x;
    x_356 = x_363;
  }
  let x_364 : f32 = x_356;
  SV_Target0.x = x_364;
  let x_367 : bool = u_xlatb0.y;
  if (x_367) {
    let x_372 : f32 = u_xlat2.y;
    x_368 = x_372;
  } else {
    let x_375 : f32 = u_xlat1.y;
    x_368 = x_375;
  }
  let x_376 : f32 = x_368;
  SV_Target0.y = x_376;
  let x_379 : bool = u_xlatb0.z;
  if (x_379) {
    let x_384 : f32 = u_xlat2.z;
    x_380 = x_384;
  } else {
    let x_387 : f32 = u_xlat1.z;
    x_380 = x_387;
  }
  let x_388 : f32 = x_380;
  SV_Target0.z = x_388;
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

