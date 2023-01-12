struct PGlobals {
  x_RenderViewportScaleFactor : f32,
  @size(12)
  padding : u32,
  x_MainTex_TexelSize : vec4<f32>,
  x_ChromaticAberration_Amount : f32,
  @size(12)
  padding_1 : u32,
  x_Lut2D_Params : vec3<f32>,
  x_LumaInAlpha : f32,
}

@group(0) @binding(1) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(5) var sampler_AutoExposureTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_58 : PGlobals;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(4) var sampler_MainTex : sampler;

@group(0) @binding(2) var x_ChromaticAberration_SpectralLut : texture_2d<f32>;

@group(0) @binding(6) var sampler_ChromaticAberration_SpectralLut : sampler;

@group(0) @binding(3) var x_Lut2D : texture_2d<f32>;

@group(0) @binding(7) var sampler_Lut2D : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec3<f32>;
  var u_xlat7 : vec3<f32>;
  var u_xlat21 : f32;
  var u_xlat1 : vec4<f32>;
  var u_xlati21 : i32;
  var u_xlat2 : vec3<f32>;
  var u_xlat16 : vec2<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat8 : vec2<f32>;
  var u_xlati_loop_1 : i32;
  var u_xlat6 : vec4<f32>;
  var u_xlatb0 : vec3<bool>;
  var x_294 : f32;
  var x_306 : f32;
  var x_318 : f32;
  var u_xlat14 : vec2<f32>;
  var x_459 : f32;
  var x_471 : f32;
  var x_483 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD0;
  let x_25 : vec4<f32> = textureSample(x_AutoExposureTex, sampler_AutoExposureTex, x_23);
  u_xlat0.x = x_25.x;
  let x_32 : vec2<f32> = vs_TEXCOORD0;
  let x_38 : vec2<f32> = ((x_32 * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_39 : vec3<f32> = u_xlat7;
  u_xlat7 = vec3<f32>(x_38.x, x_38.y, x_39.z);
  let x_42 : vec3<f32> = u_xlat7;
  let x_44 : vec3<f32> = u_xlat7;
  u_xlat21 = dot(vec2<f32>(x_42.x, x_42.y), vec2<f32>(x_44.x, x_44.y));
  let x_47 : f32 = u_xlat21;
  let x_49 : vec3<f32> = u_xlat7;
  let x_51 : vec2<f32> = (vec2<f32>(x_47, x_47) * vec2<f32>(x_49.x, x_49.y));
  let x_52 : vec3<f32> = u_xlat7;
  u_xlat7 = vec3<f32>(x_51.x, x_51.y, x_52.z);
  let x_54 : vec3<f32> = u_xlat7;
  let x_63 : f32 = x_58.x_ChromaticAberration_Amount;
  let x_65 : f32 = x_58.x_ChromaticAberration_Amount;
  let x_66 : vec2<f32> = vec2<f32>(x_63, x_65);
  let x_70 : vec2<f32> = (vec2<f32>(x_54.x, x_54.y) * vec2<f32>(x_66.x, x_66.y));
  let x_71 : vec3<f32> = u_xlat7;
  u_xlat7 = vec3<f32>(x_70.x, x_70.y, x_71.z);
  let x_75 : vec3<f32> = u_xlat7;
  let x_81 : vec4<f32> = x_58.x_MainTex_TexelSize;
  let x_83 : vec2<f32> = (-(vec2<f32>(x_75.x, x_75.y)) * vec2<f32>(x_81.z, x_81.w));
  let x_84 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_83.x, x_83.y, x_84.z, x_84.w);
  let x_86 : vec4<f32> = u_xlat1;
  let x_90 : vec2<f32> = (vec2<f32>(x_86.x, x_86.y) * vec2<f32>(0.5f, 0.5f));
  let x_91 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_90.x, x_90.y, x_91.z, x_91.w);
  let x_93 : vec4<f32> = u_xlat1;
  let x_95 : vec4<f32> = u_xlat1;
  u_xlat21 = dot(vec2<f32>(x_93.x, x_93.y), vec2<f32>(x_95.x, x_95.y));
  let x_98 : f32 = u_xlat21;
  u_xlat21 = sqrt(x_98);
  let x_102 : f32 = u_xlat21;
  u_xlati21 = i32(x_102);
  let x_104 : i32 = u_xlati21;
  u_xlati21 = max(x_104, 3i);
  let x_107 : i32 = u_xlati21;
  u_xlati21 = min(x_107, 16i);
  let x_110 : i32 = u_xlati21;
  u_xlat1.x = f32(x_110);
  let x_113 : vec3<f32> = u_xlat7;
  let x_116 : vec4<f32> = u_xlat1;
  let x_118 : vec2<f32> = (-(vec2<f32>(x_113.x, x_113.y)) / vec2<f32>(x_116.x, x_116.x));
  let x_119 : vec3<f32> = u_xlat7;
  u_xlat7 = vec3<f32>(x_118.x, x_118.y, x_119.z);
  u_xlat2.y = 0.0f;
  u_xlat16.y = 0.0f;
  u_xlat3.w = 1.0f;
  u_xlat4.x = 0.0f;
  u_xlat4.y = 0.0f;
  u_xlat4.z = 0.0f;
  u_xlat4.w = 0.0f;
  u_xlat5.x = 0.0f;
  u_xlat5.y = 0.0f;
  u_xlat5.z = 0.0f;
  u_xlat5.w = 0.0f;
  let x_144 : vec2<f32> = vs_TEXCOORD0;
  u_xlat8 = x_144;
  u_xlati_loop_1 = 0i;
  loop {
    let x_152 : i32 = u_xlati_loop_1;
    let x_153 : i32 = u_xlati21;
    if ((x_152 < x_153)) {
    } else {
      break;
    }
    let x_157 : i32 = u_xlati_loop_1;
    u_xlat6.x = f32(x_157);
    let x_161 : f32 = u_xlat6.x;
    u_xlat6.x = (x_161 + 0.5f);
    let x_165 : f32 = u_xlat6.x;
    let x_167 : f32 = u_xlat1.x;
    u_xlat2.x = (x_165 / x_167);
    let x_170 : vec2<f32> = u_xlat8;
    let x_171 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_170.x, x_170.y, x_171.z, x_171.w);
    let x_173 : vec4<f32> = u_xlat6;
    let x_177 : vec2<f32> = clamp(vec2<f32>(x_173.x, x_173.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
    let x_178 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_177.x, x_177.y, x_178.z, x_178.w);
    let x_180 : vec4<f32> = u_xlat6;
    let x_183 : f32 = x_58.x_RenderViewportScaleFactor;
    let x_185 : vec2<f32> = (vec2<f32>(x_180.x, x_180.y) * vec2<f32>(x_183, x_183));
    let x_186 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_185.x, x_185.y, x_186.z, x_186.w);
    let x_193 : vec4<f32> = u_xlat6;
    let x_195 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, vec2<f32>(x_193.x, x_193.y), 0.0f);
    u_xlat6 = x_195;
    let x_201 : vec3<f32> = u_xlat2;
    let x_203 : vec4<f32> = textureSampleLevel(x_ChromaticAberration_SpectralLut, sampler_ChromaticAberration_SpectralLut, vec2<f32>(x_201.x, x_201.y), 0.0f);
    let x_204 : vec3<f32> = vec3<f32>(x_203.x, x_203.y, x_203.z);
    let x_205 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_204.x, x_204.y, x_204.z, x_205.w);
    let x_207 : vec4<f32> = u_xlat6;
    let x_208 : vec4<f32> = u_xlat3;
    let x_210 : vec4<f32> = u_xlat4;
    u_xlat4 = ((x_207 * x_208) + x_210);
    let x_212 : vec4<f32> = u_xlat3;
    let x_213 : vec4<f32> = u_xlat5;
    u_xlat5 = (x_212 + x_213);
    let x_215 : vec3<f32> = u_xlat7;
    let x_217 : vec2<f32> = u_xlat8;
    u_xlat8 = (vec2<f32>(x_215.x, x_215.y) + x_217);

    continuing {
      let x_219 : i32 = u_xlati_loop_1;
      u_xlati_loop_1 = (x_219 + 1i);
    }
  }
  let x_221 : vec4<f32> = u_xlat4;
  let x_222 : vec4<f32> = u_xlat5;
  u_xlat1 = (x_221 / x_222);
  let x_224 : vec3<f32> = u_xlat0;
  let x_226 : vec4<f32> = u_xlat1;
  u_xlat0 = (vec3<f32>(x_224.x, x_224.x, x_224.x) * vec3<f32>(x_226.x, x_226.y, x_226.z));
  let x_229 : vec3<f32> = u_xlat0;
  u_xlat0 = clamp(x_229, vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_234 : f32 = u_xlat1.w;
  u_xlat1.w = x_234;
  let x_237 : f32 = u_xlat1.w;
  u_xlat1.w = clamp(x_237, 0.0f, 1.0f);
  let x_240 : vec3<f32> = u_xlat0;
  let x_244 : vec3<f32> = (vec3<f32>(x_240.z, x_240.x, x_240.y) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_245 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_244.x, x_244.y, x_244.z, x_245.w);
  let x_247 : vec3<f32> = u_xlat0;
  let x_251 : vec3<f32> = max(vec3<f32>(x_247.z, x_247.x, x_247.y), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_252 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_251.x, x_251.y, x_251.z, x_252.w);
  let x_254 : vec4<f32> = u_xlat4;
  let x_256 : vec3<f32> = log2(vec3<f32>(x_254.x, x_254.y, x_254.z));
  let x_257 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_256.x, x_256.y, x_256.z, x_257.w);
  let x_259 : vec4<f32> = u_xlat4;
  let x_263 : vec3<f32> = (vec3<f32>(x_259.x, x_259.y, x_259.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_264 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_263.x, x_263.y, x_263.z, x_264.w);
  let x_266 : vec4<f32> = u_xlat4;
  let x_268 : vec3<f32> = exp2(vec3<f32>(x_266.x, x_266.y, x_266.z));
  let x_269 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_268.x, x_268.y, x_268.z, x_269.w);
  let x_271 : vec4<f32> = u_xlat4;
  let x_278 : vec3<f32> = ((vec3<f32>(x_271.x, x_271.y, x_271.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_279 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_278.x, x_278.y, x_278.z, x_279.w);
  let x_286 : vec3<f32> = u_xlat0;
  let x_289 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_286.z, x_286.x, x_286.y, x_286.z));
  u_xlatb0 = vec3<bool>(x_289.x, x_289.y, x_289.z);
  let x_293 : bool = u_xlatb0.x;
  if (x_293) {
    let x_298 : f32 = u_xlat3.x;
    x_294 = x_298;
  } else {
    let x_301 : f32 = u_xlat4.x;
    x_294 = x_301;
  }
  let x_302 : f32 = x_294;
  u_xlat0.x = x_302;
  let x_305 : bool = u_xlatb0.y;
  if (x_305) {
    let x_310 : f32 = u_xlat3.y;
    x_306 = x_310;
  } else {
    let x_313 : f32 = u_xlat4.y;
    x_306 = x_313;
  }
  let x_314 : f32 = x_306;
  u_xlat0.y = x_314;
  let x_317 : bool = u_xlatb0.z;
  if (x_317) {
    let x_322 : f32 = u_xlat3.z;
    x_318 = x_322;
  } else {
    let x_325 : f32 = u_xlat4.z;
    x_318 = x_325;
  }
  let x_326 : f32 = x_318;
  u_xlat0.z = x_326;
  let x_328 : vec3<f32> = u_xlat0;
  let x_331 : vec3<f32> = x_58.x_Lut2D_Params;
  u_xlat7 = (x_328 * vec3<f32>(x_331.z, x_331.z, x_331.z));
  let x_335 : f32 = u_xlat7.x;
  u_xlat7.x = floor(x_335);
  let x_339 : vec3<f32> = x_58.x_Lut2D_Params;
  let x_341 : vec2<f32> = (vec2<f32>(x_339.x, x_339.y) * vec2<f32>(0.5f, 0.5f));
  let x_342 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_341.x, x_341.y, x_342.z);
  let x_344 : vec3<f32> = u_xlat7;
  let x_347 : vec3<f32> = x_58.x_Lut2D_Params;
  let x_350 : vec3<f32> = u_xlat2;
  let x_352 : vec2<f32> = ((vec2<f32>(x_344.y, x_344.z) * vec2<f32>(x_347.x, x_347.y)) + vec2<f32>(x_350.x, x_350.y));
  let x_353 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_353.x, x_352.x, x_352.y, x_353.w);
  let x_356 : f32 = u_xlat7.x;
  let x_358 : f32 = x_58.x_Lut2D_Params.y;
  let x_361 : f32 = u_xlat3.y;
  u_xlat3.x = ((x_356 * x_358) + x_361);
  let x_369 : vec4<f32> = u_xlat3;
  let x_371 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_369.x, x_369.z));
  let x_372 : vec3<f32> = vec3<f32>(x_371.x, x_371.y, x_371.z);
  let x_373 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_372.x, x_372.y, x_372.z, x_373.w);
  let x_376 : f32 = x_58.x_Lut2D_Params.y;
  u_xlat16.x = x_376;
  let x_379 : vec2<f32> = u_xlat16;
  let x_380 : vec4<f32> = u_xlat3;
  u_xlat14 = (x_379 + vec2<f32>(x_380.x, x_380.z));
  let x_386 : vec2<f32> = u_xlat14;
  let x_387 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, x_386);
  u_xlat2 = vec3<f32>(x_387.x, x_387.y, x_387.z);
  let x_390 : f32 = u_xlat0.x;
  let x_392 : f32 = x_58.x_Lut2D_Params.z;
  let x_395 : f32 = u_xlat7.x;
  u_xlat0.x = ((x_390 * x_392) + -(x_395));
  let x_399 : vec4<f32> = u_xlat4;
  let x_402 : vec3<f32> = u_xlat2;
  u_xlat7 = (-(vec3<f32>(x_399.x, x_399.y, x_399.z)) + x_402);
  let x_404 : vec3<f32> = u_xlat0;
  let x_406 : vec3<f32> = u_xlat7;
  let x_408 : vec4<f32> = u_xlat4;
  u_xlat0 = ((vec3<f32>(x_404.x, x_404.x, x_404.x) * x_406) + vec3<f32>(x_408.x, x_408.y, x_408.z));
  let x_411 : vec3<f32> = u_xlat0;
  u_xlat2 = (x_411 * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_415 : vec3<f32> = u_xlat0;
  let x_418 : vec3<f32> = (x_415 + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_419 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_418.x, x_418.y, x_418.z, x_419.w);
  let x_421 : vec4<f32> = u_xlat3;
  let x_425 : vec3<f32> = (vec3<f32>(x_421.x, x_421.y, x_421.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_426 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_425.x, x_425.y, x_425.z, x_426.w);
  let x_428 : vec4<f32> = u_xlat3;
  let x_431 : vec3<f32> = max(abs(vec3<f32>(x_428.x, x_428.y, x_428.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_432 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_431.x, x_431.y, x_431.z, x_432.w);
  let x_434 : vec4<f32> = u_xlat3;
  let x_436 : vec3<f32> = log2(vec3<f32>(x_434.x, x_434.y, x_434.z));
  let x_437 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_436.x, x_436.y, x_436.z, x_437.w);
  let x_439 : vec4<f32> = u_xlat3;
  let x_443 : vec3<f32> = (vec3<f32>(x_439.x, x_439.y, x_439.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_444 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_443.x, x_443.y, x_443.z, x_444.w);
  let x_446 : vec4<f32> = u_xlat3;
  let x_448 : vec3<f32> = exp2(vec3<f32>(x_446.x, x_446.y, x_446.z));
  let x_449 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_448.x, x_448.y, x_448.z, x_449.w);
  let x_453 : vec3<f32> = u_xlat0;
  let x_455 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_453.x, x_453.y, x_453.z, x_453.x));
  u_xlatb0 = vec3<bool>(x_455.x, x_455.y, x_455.z);
  let x_458 : bool = u_xlatb0.x;
  if (x_458) {
    let x_463 : f32 = u_xlat2.x;
    x_459 = x_463;
  } else {
    let x_466 : f32 = u_xlat3.x;
    x_459 = x_466;
  }
  let x_467 : f32 = x_459;
  u_xlat1.x = x_467;
  let x_470 : bool = u_xlatb0.y;
  if (x_470) {
    let x_475 : f32 = u_xlat2.y;
    x_471 = x_475;
  } else {
    let x_478 : f32 = u_xlat3.y;
    x_471 = x_478;
  }
  let x_479 : f32 = x_471;
  u_xlat1.y = x_479;
  let x_482 : bool = u_xlatb0.z;
  if (x_482) {
    let x_487 : f32 = u_xlat2.z;
    x_483 = x_487;
  } else {
    let x_490 : f32 = u_xlat3.z;
    x_483 = x_490;
  }
  let x_491 : f32 = x_483;
  u_xlat1.z = x_491;
  let x_495 : f32 = x_58.x_LumaInAlpha;
  u_xlatb0.x = (0.5f < x_495);
  let x_499 : bool = u_xlatb0.x;
  if (x_499) {
    let x_502 : vec4<f32> = u_xlat1;
    u_xlat0 = vec3<f32>(x_502.x, x_502.y, x_502.z);
    let x_504 : vec3<f32> = u_xlat0;
    u_xlat0 = clamp(x_504, vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_508 : vec3<f32> = u_xlat0;
    u_xlat1.w = dot(x_508, vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  }
  let x_517 : vec4<f32> = u_xlat1;
  SV_Target0 = x_517;
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

