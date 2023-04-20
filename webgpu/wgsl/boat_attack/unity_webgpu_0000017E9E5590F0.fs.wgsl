diagnostic(off, derivative_uniformity);

struct PGlobals {
  /* @offset(0) */
  x_PCUVToBrushUVScales : vec4<f32>,
  /* @offset(16) */
  x_PCUVToBrushUVOffset : vec2<f32>,
  /* @offset(32) */
  x_MainTex_TexelSize : vec4<f32>,
  /* @offset(48) */
  x_BrushParams : vec4<f32>,
  /* @offset(64) */
  x_SmoothWeights : vec4<f32>,
}

var<private> u_xlat0 : vec3<f32>;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_39 : PGlobals;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(2) var sampler_MainTex : sampler;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlat3 : vec2<f32>;

var<private> u_xlat9 : f32;

var<private> u_xlat7 : vec2<f32>;

var<private> u_xlat6 : f32;

var<private> u_xlat4 : vec2<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlatb1 : vec2<bool>;

@group(0) @binding(1) var x_BrushTex : texture_2d<f32>;

@group(0) @binding(3) var sampler_BrushTex : sampler;

var<private> u_xlatb6 : bool;

var<private> u_xlatu0 : vec2<u32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn uint_bitfieldExtract_u1_i1_i1_(value : ptr<function, u32>, offset_1 : ptr<function, i32>, bits : ptr<function, i32>) -> u32 {
  let x_16 : u32 = *(value);
  let x_17 : i32 = *(offset_1);
  let x_21 : i32 = *(bits);
  return ((x_16 >> bitcast<u32>(x_17)) & ~((4294967295u << bitcast<u32>(x_21))));
}

fn main_1() {
  var param : u32;
  var param_1 : i32;
  var param_2 : i32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_35 : vec2<f32> = vs_TEXCOORD0;
  let x_43 : vec4<f32> = x_39.x_MainTex_TexelSize;
  let x_45 : vec2<f32> = (x_35 + vec2<f32>(x_43.x, x_43.y));
  let x_46 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_45.x, x_45.y, x_46.z);
  let x_58 : vec3<f32> = u_xlat0;
  let x_60 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_58.x, x_58.y));
  let x_61 : vec2<f32> = vec2<f32>(x_60.x, x_60.y);
  let x_62 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_61.x, x_61.y, x_62.z);
  let x_67 : f32 = u_xlat0.y;
  let x_72 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_67 * 256.0f) + x_72);
  let x_78 : vec4<f32> = x_39.x_MainTex_TexelSize;
  let x_80 : vec3<f32> = -(vec3<f32>(x_78.x, x_78.y, x_78.x));
  let x_81 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_80.x, x_80.y, x_80.z, x_81.w);
  u_xlat1.w = 0.0f;
  let x_86 : vec4<f32> = u_xlat1;
  let x_88 : vec2<f32> = vs_TEXCOORD0;
  u_xlat1 = (vec4<f32>(x_86.z, x_86.w, x_86.x, x_86.y) + vec4<f32>(x_88.x, x_88.y, x_88.x, x_88.y));
  let x_96 : vec4<f32> = u_xlat1;
  let x_98 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_96.x, x_96.y));
  u_xlat3 = vec2<f32>(x_98.x, x_98.y);
  let x_103 : vec4<f32> = u_xlat1;
  let x_105 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_103.z, x_103.w));
  let x_106 : vec2<f32> = vec2<f32>(x_105.x, x_105.y);
  let x_107 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_106.x, x_106.y, x_107.z, x_107.w);
  let x_111 : f32 = u_xlat1.y;
  let x_114 : f32 = u_xlat1.x;
  u_xlat9 = ((x_111 * 256.0f) + x_114);
  let x_117 : f32 = u_xlat3.y;
  let x_120 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_117 * 256.0f) + x_120);
  let x_124 : vec4<f32> = x_39.x_MainTex_TexelSize;
  let x_125 : vec2<f32> = vec2<f32>(x_124.x, x_124.y);
  let x_126 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_125.x, x_126.y, x_126.z, x_125.y);
  u_xlat1.y = 0.0f;
  u_xlat1.z = 0.0f;
  let x_131 : vec4<f32> = u_xlat1;
  let x_132 : vec2<f32> = vs_TEXCOORD0;
  u_xlat1 = (x_131 + vec4<f32>(x_132.x, x_132.y, x_132.x, x_132.y));
  let x_138 : vec4<f32> = u_xlat1;
  let x_140 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_138.x, x_138.y));
  let x_141 : vec2<f32> = vec2<f32>(x_140.x, x_140.y);
  let x_142 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_141.x, x_141.y, x_142.z, x_142.w);
  let x_148 : vec4<f32> = u_xlat1;
  let x_150 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_148.z, x_148.w));
  u_xlat7 = vec2<f32>(x_150.x, x_150.y);
  let x_154 : f32 = u_xlat7.y;
  let x_157 : f32 = u_xlat7.x;
  u_xlat6 = ((x_154 * 256.0f) + x_157);
  let x_160 : f32 = u_xlat1.y;
  let x_163 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_160 * 256.0f) + x_163);
  let x_170 : vec2<f32> = vs_TEXCOORD0;
  let x_171 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_170);
  u_xlat4 = vec2<f32>(x_171.x, x_171.y);
  let x_174 : f32 = u_xlat4.y;
  let x_177 : f32 = u_xlat4.x;
  u_xlat4.x = ((x_174 * 256.0f) + x_177);
  let x_181 : f32 = u_xlat4.x;
  u_xlat7.x = (x_181 * 0.00389105058275163174f);
  let x_186 : f32 = u_xlat1.x;
  let x_189 : f32 = u_xlat7.x;
  u_xlat1.x = ((x_186 * 0.00389105058275163174f) + x_189);
  let x_193 : f32 = u_xlat3.x;
  let x_196 : f32 = u_xlat1.x;
  u_xlat3.x = ((x_193 * 0.00389105058275163174f) + x_196);
  let x_200 : f32 = u_xlat0.x;
  let x_204 : f32 = u_xlat3.x;
  u_xlat0.x = ((x_200 * 0.00291828787885606289f) + x_204);
  let x_209 : vec4<f32> = x_39.x_MainTex_TexelSize;
  let x_215 : vec2<f32> = vs_TEXCOORD0;
  u_xlat2 = ((vec4<f32>(x_209.x, x_209.y, x_209.x, x_209.y) * vec4<f32>(-1.0f, 1.0f, 1.0f, -1.0f)) + vec4<f32>(x_215.x, x_215.y, x_215.x, x_215.y));
  let x_221 : vec4<f32> = u_xlat2;
  let x_223 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_221.x, x_221.y));
  let x_224 : vec2<f32> = vec2<f32>(x_223.x, x_223.y);
  let x_225 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_224.x, x_225.y, x_225.z, x_224.y);
  let x_230 : vec4<f32> = u_xlat2;
  let x_232 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_230.z, x_230.w));
  let x_233 : vec2<f32> = vec2<f32>(x_232.x, x_232.y);
  let x_234 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_233.x, x_233.y, x_234.z, x_234.w);
  let x_237 : f32 = u_xlat2.y;
  let x_240 : f32 = u_xlat2.x;
  u_xlat3.x = ((x_237 * 256.0f) + x_240);
  let x_244 : f32 = u_xlat1.w;
  let x_247 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_244 * 256.0f) + x_247);
  let x_251 : f32 = u_xlat1.x;
  let x_254 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_251 * 0.00291828787885606289f) + x_254);
  let x_258 : f32 = u_xlat3.x;
  let x_261 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_258 * 0.00291828787885606289f) + x_261);
  let x_264 : f32 = u_xlat9;
  let x_267 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_264 * 0.00291828787885606289f) + x_267);
  let x_270 : f32 = u_xlat6;
  let x_273 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_270 * 0.00389105058275163174f) + x_273);
  u_xlat2.x = 0.0f;
  let x_279 : f32 = x_39.x_MainTex_TexelSize.y;
  u_xlat2.y = -(x_279);
  let x_282 : vec4<f32> = u_xlat2;
  let x_284 : vec2<f32> = vs_TEXCOORD0;
  u_xlat3 = (vec2<f32>(x_282.x, x_282.y) + x_284);
  let x_289 : vec2<f32> = u_xlat3;
  let x_290 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_289);
  u_xlat3 = vec2<f32>(x_290.x, x_290.y);
  let x_293 : f32 = u_xlat3.y;
  let x_296 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_293 * 256.0f) + x_296);
  let x_300 : f32 = u_xlat3.x;
  let x_303 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_300 * 0.00389105058275163174f) + x_303);
  let x_307 : f32 = u_xlat0.x;
  u_xlat0.x = (x_307 * 0.125f);
  let x_312 : f32 = u_xlat7.x;
  let x_314 : f32 = u_xlat0.x;
  u_xlat0.y = min(x_312, x_314);
  let x_318 : f32 = u_xlat7.x;
  let x_320 : f32 = u_xlat0.x;
  u_xlat0.z = max(x_318, x_320);
  let x_323 : vec3<f32> = u_xlat0;
  let x_326 : vec4<f32> = x_39.x_SmoothWeights;
  u_xlat0.x = dot(x_323, vec3<f32>(x_326.x, x_326.y, x_326.z));
  let x_331 : f32 = u_xlat4.x;
  let x_335 : f32 = u_xlat0.x;
  u_xlat0.x = ((-(x_331) * 0.00389105058275163174f) + x_335);
  let x_338 : vec2<f32> = vs_TEXCOORD0;
  let x_342 : vec4<f32> = x_39.x_PCUVToBrushUVScales;
  u_xlat2 = (vec4<f32>(x_338.x, x_338.x, x_338.y, x_338.y) * x_342);
  let x_344 : vec4<f32> = u_xlat2;
  let x_346 : vec4<f32> = u_xlat2;
  u_xlat3 = (vec2<f32>(x_344.z, x_344.w) + vec2<f32>(x_346.x, x_346.y));
  let x_349 : vec2<f32> = u_xlat3;
  let x_353 : vec2<f32> = x_39.x_PCUVToBrushUVOffset;
  u_xlat3 = (x_349 + x_353);
  let x_355 : vec2<f32> = u_xlat3;
  let x_356 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_355.x, x_355.y, x_356.z, x_356.w);
  let x_358 : vec4<f32> = u_xlat1;
  let x_362 : vec2<f32> = clamp(vec2<f32>(x_358.x, x_358.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_363 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_362.x, x_362.y, x_363.z, x_363.w);
  let x_369 : vec2<f32> = u_xlat3;
  let x_371 : vec4<f32> = u_xlat1;
  let x_374 : vec4<bool> = (vec4<f32>(x_369.x, x_369.y, x_369.x, x_369.x) == vec4<f32>(x_371.x, x_371.y, x_371.x, x_371.x));
  u_xlatb1 = vec2<bool>(x_374.x, x_374.y);
  let x_381 : vec2<f32> = u_xlat3;
  let x_382 : vec4<f32> = textureSample(x_BrushTex, sampler_BrushTex, x_381);
  u_xlat3 = vec2<f32>(x_382.x, x_382.y);
  let x_385 : f32 = u_xlat3.y;
  let x_388 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_385 * 256.0f) + x_388);
  let x_394 : bool = u_xlatb1.y;
  let x_396 : bool = u_xlatb1.x;
  u_xlatb6 = (x_394 & x_396);
  let x_398 : bool = u_xlatb6;
  u_xlat6 = select(0.0f, 1.0f, x_398);
  let x_400 : f32 = u_xlat6;
  let x_403 : f32 = x_39.x_BrushParams.x;
  u_xlat6 = (x_400 * x_403);
  let x_405 : f32 = u_xlat6;
  let x_407 : f32 = u_xlat3.x;
  u_xlat3.x = (x_405 * x_407);
  let x_411 : f32 = u_xlat3.x;
  u_xlat3.x = (x_411 * 0.00389105058275163174f);
  let x_415 : f32 = u_xlat3.x;
  let x_417 : f32 = u_xlat0.x;
  let x_420 : f32 = u_xlat7.x;
  u_xlat0.x = ((x_415 * x_417) + x_420);
  let x_424 : f32 = u_xlat0.x;
  u_xlat0.x = (x_424 * 65535.0f);
  let x_432 : f32 = u_xlat0.x;
  u_xlatu0.x = u32(x_432);
  let x_437 : u32 = u_xlatu0.x;
  u_xlatu0.y = (x_437 & 255u);
  let x_444 : u32 = u_xlatu0.x;
  param = x_444;
  param_1 = 8i;
  param_2 = 8i;
  let x_447 : u32 = uint_bitfieldExtract_u1_i1_i1_(&(param), &(param_1), &(param_2));
  u_xlatu0.x = x_447;
  let x_449 : vec2<u32> = u_xlatu0;
  let x_451 : vec2<f32> = vec2<f32>(vec2<u32>(x_449.y, x_449.x));
  let x_452 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_451.x, x_451.y, x_452.z, x_452.w);
  let x_456 : vec4<f32> = u_xlat1;
  let x_460 : vec2<f32> = (vec2<f32>(x_456.x, x_456.y) * vec2<f32>(0.0039215688593685627f, 0.0039215688593685627f));
  let x_461 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_460.x, x_460.y, x_461.z, x_461.w);
  let x_464 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_464.x, x_464.y, vec2<f32>(0.0f, 0.0f).x, vec2<f32>(0.0f, 0.0f).y);
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


