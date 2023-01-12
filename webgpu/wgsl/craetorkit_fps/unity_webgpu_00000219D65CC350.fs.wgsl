struct PGlobals {
  x_RenderViewportScaleFactor : f32,
  @size(12)
  padding : u32,
  x_Distortion_Amount : vec4<f32>,
  x_Distortion_CenterScale : vec4<f32>,
  x_MainTex_TexelSize : vec4<f32>,
  x_ChromaticAberration_Amount : f32,
  @size(4)
  padding_1 : u32,
  x_Lut3D_Params : vec2<f32>,
  x_PostExposure : f32,
  @size(4)
  padding_2 : u32,
  x_Grain_Params1 : vec2<f32>,
  x_Grain_Params2 : vec4<f32>,
  x_LumaInAlpha : f32,
}

@group(0) @binding(1) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(6) var sampler_AutoExposureTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_50 : PGlobals;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(5) var sampler_MainTex : sampler;

@group(0) @binding(2) var x_ChromaticAberration_SpectralLut : texture_2d<f32>;

@group(0) @binding(7) var sampler_ChromaticAberration_SpectralLut : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(0) @binding(4) var x_GrainTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_GrainTex : sampler;

@group(0) @binding(3) var x_Lut3D : texture_3d<f32>;

@group(0) @binding(8) var sampler_Lut3D : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat9 : vec2<f32>;
  var u_xlat27 : f32;
  var u_xlat1 : vec4<f32>;
  var u_xlati27 : i32;
  var u_xlatb10 : bool;
  var u_xlat2 : vec3<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat19 : vec2<f32>;
  var u_xlati_loop_1 : i32;
  var u_xlat29 : f32;
  var u_xlat6 : vec4<f32>;
  var u_xlat24 : vec2<f32>;
  var u_xlat7 : vec2<f32>;
  var u_xlat8 : f32;
  var u_xlat16 : f32;
  var u_xlat25 : f32;
  var u_xlat34 : f32;
  var u_xlat17 : f32;
  var u_xlatb26 : bool;
  var u_xlatb29 : bool;
  var x_315 : f32;
  var u_xlat28 : f32;
  var u_xlatb1 : bool;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD0;
  let x_24 : vec4<f32> = textureSample(x_AutoExposureTex, sampler_AutoExposureTex, x_23);
  u_xlat0.x = x_24.x;
  let x_32 : vec2<f32> = vs_TEXCOORD0;
  u_xlat9 = ((x_32 * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_40 : vec2<f32> = u_xlat9;
  let x_41 : vec2<f32> = u_xlat9;
  u_xlat27 = dot(x_40, x_41);
  let x_43 : f32 = u_xlat27;
  let x_45 : vec2<f32> = u_xlat9;
  u_xlat9 = (vec2<f32>(x_43, x_43) * x_45);
  let x_47 : vec2<f32> = u_xlat9;
  let x_55 : f32 = x_50.x_ChromaticAberration_Amount;
  let x_57 : f32 = x_50.x_ChromaticAberration_Amount;
  let x_58 : vec2<f32> = vec2<f32>(x_55, x_57);
  u_xlat9 = (x_47 * vec2<f32>(x_58.x, x_58.y));
  let x_64 : vec2<f32> = u_xlat9;
  let x_69 : vec4<f32> = x_50.x_MainTex_TexelSize;
  let x_71 : vec2<f32> = (-(x_64) * vec2<f32>(x_69.z, x_69.w));
  let x_72 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_71.x, x_71.y, x_72.z, x_72.w);
  let x_74 : vec4<f32> = u_xlat1;
  let x_78 : vec2<f32> = (vec2<f32>(x_74.x, x_74.y) * vec2<f32>(0.5f, 0.5f));
  let x_79 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_78.x, x_78.y, x_79.z, x_79.w);
  let x_81 : vec4<f32> = u_xlat1;
  let x_83 : vec4<f32> = u_xlat1;
  u_xlat27 = dot(vec2<f32>(x_81.x, x_81.y), vec2<f32>(x_83.x, x_83.y));
  let x_86 : f32 = u_xlat27;
  u_xlat27 = sqrt(x_86);
  let x_90 : f32 = u_xlat27;
  u_xlati27 = i32(x_90);
  let x_92 : i32 = u_xlati27;
  u_xlati27 = max(x_92, 3i);
  let x_94 : i32 = u_xlati27;
  u_xlati27 = min(x_94, 16i);
  let x_97 : i32 = u_xlati27;
  u_xlat1.x = f32(x_97);
  let x_100 : vec2<f32> = u_xlat9;
  let x_102 : vec4<f32> = u_xlat1;
  u_xlat9 = (-(x_100) / vec2<f32>(x_102.x, x_102.x));
  let x_112 : f32 = x_50.x_Distortion_Amount.w;
  u_xlatb10 = (0.0f < x_112);
  u_xlat2.y = 0.0f;
  u_xlat3.w = 1.0f;
  u_xlat4.x = 0.0f;
  u_xlat4.y = 0.0f;
  u_xlat4.z = 0.0f;
  u_xlat4.w = 0.0f;
  u_xlat5.x = 0.0f;
  u_xlat5.y = 0.0f;
  u_xlat5.z = 0.0f;
  u_xlat5.w = 0.0f;
  let x_134 : vec2<f32> = vs_TEXCOORD0;
  u_xlat19 = x_134;
  u_xlati_loop_1 = 0i;
  loop {
    let x_142 : i32 = u_xlati_loop_1;
    let x_143 : i32 = u_xlati27;
    if ((x_142 < x_143)) {
    } else {
      break;
    }
    let x_146 : i32 = u_xlati_loop_1;
    u_xlat29 = f32(x_146);
    let x_148 : f32 = u_xlat29;
    u_xlat29 = (x_148 + 0.5f);
    let x_150 : f32 = u_xlat29;
    let x_152 : f32 = u_xlat1.x;
    u_xlat2.x = (x_150 / x_152);
    let x_156 : vec2<f32> = u_xlat19;
    let x_159 : vec2<f32> = (x_156 + vec2<f32>(-0.5f, -0.5f));
    let x_160 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_159.x, x_159.y, x_160.z, x_160.w);
    let x_163 : vec4<f32> = u_xlat6;
    let x_166 : vec4<f32> = x_50.x_Distortion_Amount;
    u_xlat24 = ((vec2<f32>(x_163.x, x_163.y) * vec2<f32>(x_166.z, x_166.z)) + vec2<f32>(0.5f, 0.5f));
    let x_170 : vec4<f32> = u_xlat6;
    let x_173 : vec4<f32> = x_50.x_Distortion_Amount;
    let x_178 : vec4<f32> = x_50.x_Distortion_CenterScale;
    let x_181 : vec2<f32> = ((vec2<f32>(x_170.x, x_170.y) * vec2<f32>(x_173.z, x_173.z)) + -(vec2<f32>(x_178.x, x_178.y)));
    let x_182 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_181.x, x_181.y, x_182.z, x_182.w);
    let x_184 : vec4<f32> = u_xlat6;
    let x_187 : vec4<f32> = x_50.x_Distortion_CenterScale;
    let x_189 : vec2<f32> = (vec2<f32>(x_184.x, x_184.y) * vec2<f32>(x_187.z, x_187.w));
    let x_190 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_189.x, x_189.y, x_190.z, x_190.w);
    let x_192 : vec4<f32> = u_xlat6;
    let x_194 : vec4<f32> = u_xlat6;
    u_xlat29 = dot(vec2<f32>(x_192.x, x_192.y), vec2<f32>(x_194.x, x_194.y));
    let x_197 : f32 = u_xlat29;
    u_xlat29 = sqrt(x_197);
    let x_199 : bool = u_xlatb10;
    if (x_199) {
      let x_203 : f32 = u_xlat29;
      let x_206 : vec4<f32> = x_50.x_Distortion_Amount;
      u_xlat7 = (vec2<f32>(x_203, x_203) * vec2<f32>(x_206.x, x_206.y));
      let x_211 : f32 = u_xlat7.x;
      u_xlat8 = cos(x_211);
      let x_214 : f32 = u_xlat7.x;
      u_xlat7.x = sin(x_214);
      let x_218 : f32 = u_xlat7.x;
      let x_219 : f32 = u_xlat8;
      u_xlat7.x = (x_218 / x_219);
      let x_224 : f32 = u_xlat7.y;
      u_xlat16 = (1.0f / x_224);
      let x_227 : f32 = u_xlat7.x;
      let x_228 : f32 = u_xlat16;
      u_xlat7.x = ((x_227 * x_228) + -1.0f);
      let x_232 : vec4<f32> = u_xlat6;
      let x_234 : vec2<f32> = u_xlat7;
      let x_237 : vec2<f32> = u_xlat24;
      u_xlat7 = ((vec2<f32>(x_232.x, x_232.y) * vec2<f32>(x_234.x, x_234.x)) + x_237);
    } else {
      let x_241 : f32 = u_xlat29;
      u_xlat25 = (1.0f / x_241);
      let x_243 : f32 = u_xlat25;
      let x_245 : f32 = x_50.x_Distortion_Amount.x;
      u_xlat25 = (x_243 * x_245);
      let x_247 : f32 = u_xlat29;
      let x_249 : f32 = x_50.x_Distortion_Amount.y;
      u_xlat29 = (x_247 * x_249);
      let x_252 : f32 = u_xlat29;
      u_xlat34 = min(abs(x_252), 1.0f);
      let x_255 : f32 = u_xlat29;
      u_xlat8 = max(abs(x_255), 1.0f);
      let x_258 : f32 = u_xlat8;
      u_xlat8 = (1.0f / x_258);
      let x_260 : f32 = u_xlat34;
      let x_261 : f32 = u_xlat8;
      u_xlat34 = (x_260 * x_261);
      let x_263 : f32 = u_xlat34;
      let x_264 : f32 = u_xlat34;
      u_xlat8 = (x_263 * x_264);
      let x_267 : f32 = u_xlat8;
      u_xlat17 = ((x_267 * 0.0208351f) + -0.085133001f);
      let x_272 : f32 = u_xlat8;
      let x_273 : f32 = u_xlat17;
      u_xlat17 = ((x_272 * x_273) + 0.180141002f);
      let x_277 : f32 = u_xlat8;
      let x_278 : f32 = u_xlat17;
      u_xlat17 = ((x_277 * x_278) + -0.330299497f);
      let x_282 : f32 = u_xlat8;
      let x_283 : f32 = u_xlat17;
      u_xlat8 = ((x_282 * x_283) + 0.999866009f);
      let x_287 : f32 = u_xlat34;
      let x_288 : f32 = u_xlat8;
      u_xlat17 = (x_287 * x_288);
      let x_291 : f32 = u_xlat29;
      u_xlatb26 = (1.0f < abs(x_291));
      let x_294 : f32 = u_xlat17;
      u_xlat17 = ((x_294 * -2.0f) + 1.570796371f);
      let x_299 : bool = u_xlatb26;
      let x_300 : f32 = u_xlat17;
      u_xlat17 = select(0.0f, x_300, x_299);
      let x_302 : f32 = u_xlat34;
      let x_303 : f32 = u_xlat8;
      let x_305 : f32 = u_xlat17;
      u_xlat34 = ((x_302 * x_303) + x_305);
      let x_307 : f32 = u_xlat29;
      u_xlat29 = min(x_307, 1.0f);
      let x_310 : f32 = u_xlat29;
      let x_311 : f32 = u_xlat29;
      u_xlatb29 = (x_310 < -(x_311));
      let x_314 : bool = u_xlatb29;
      if (x_314) {
        let x_318 : f32 = u_xlat34;
        x_315 = -(x_318);
      } else {
        let x_321 : f32 = u_xlat34;
        x_315 = x_321;
      }
      let x_322 : f32 = x_315;
      u_xlat29 = x_322;
      let x_323 : f32 = u_xlat25;
      let x_324 : f32 = u_xlat29;
      u_xlat29 = ((x_323 * x_324) + -1.0f);
      let x_327 : vec4<f32> = u_xlat6;
      let x_329 : f32 = u_xlat29;
      let x_332 : vec2<f32> = u_xlat24;
      u_xlat7 = ((vec2<f32>(x_327.x, x_327.y) * vec2<f32>(x_329, x_329)) + x_332);
    }
    let x_334 : vec2<f32> = u_xlat7;
    u_xlat7 = x_334;
    let x_335 : vec2<f32> = u_xlat7;
    u_xlat7 = clamp(x_335, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
    let x_339 : vec2<f32> = u_xlat7;
    let x_341 : f32 = x_50.x_RenderViewportScaleFactor;
    let x_343 : vec2<f32> = (x_339 * vec2<f32>(x_341, x_341));
    let x_344 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_343.x, x_343.y, x_344.z, x_344.w);
    let x_351 : vec4<f32> = u_xlat6;
    let x_353 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, vec2<f32>(x_351.x, x_351.y), 0.0f);
    u_xlat6 = x_353;
    let x_359 : vec3<f32> = u_xlat2;
    let x_361 : vec4<f32> = textureSampleLevel(x_ChromaticAberration_SpectralLut, sampler_ChromaticAberration_SpectralLut, vec2<f32>(x_359.x, x_359.y), 0.0f);
    let x_362 : vec3<f32> = vec3<f32>(x_361.x, x_361.y, x_361.z);
    let x_363 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_362.x, x_362.y, x_362.z, x_363.w);
    let x_365 : vec4<f32> = u_xlat6;
    let x_366 : vec4<f32> = u_xlat3;
    let x_368 : vec4<f32> = u_xlat4;
    u_xlat4 = ((x_365 * x_366) + x_368);
    let x_370 : vec4<f32> = u_xlat3;
    let x_371 : vec4<f32> = u_xlat5;
    u_xlat5 = (x_370 + x_371);
    let x_373 : vec2<f32> = u_xlat9;
    let x_374 : vec2<f32> = u_xlat19;
    u_xlat19 = (x_373 + x_374);

    continuing {
      let x_376 : i32 = u_xlati_loop_1;
      u_xlati_loop_1 = (x_376 + 1i);
    }
  }
  let x_378 : vec4<f32> = u_xlat4;
  let x_379 : vec4<f32> = u_xlat5;
  u_xlat1 = (x_378 / x_379);
  let x_381 : vec4<f32> = u_xlat0;
  let x_383 : vec4<f32> = u_xlat1;
  let x_385 : vec3<f32> = (vec3<f32>(x_381.x, x_381.x, x_381.x) * vec3<f32>(x_383.x, x_383.y, x_383.z));
  let x_386 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_385.x, x_385.y, x_385.z, x_386.w);
  let x_389 : vec2<f32> = vs_TEXCOORD1;
  let x_392 : vec4<f32> = x_50.x_Grain_Params2;
  let x_396 : vec4<f32> = x_50.x_Grain_Params2;
  let x_398 : vec2<f32> = ((x_389 * vec2<f32>(x_392.x, x_392.y)) + vec2<f32>(x_396.z, x_396.w));
  let x_399 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_398.x, x_398.y, x_399.z);
  let x_406 : vec3<f32> = u_xlat2;
  let x_408 : vec4<f32> = textureSample(x_GrainTex, sampler_GrainTex, vec2<f32>(x_406.x, x_406.y));
  u_xlat2 = vec3<f32>(x_408.x, x_408.y, x_408.z);
  let x_410 : vec4<f32> = u_xlat0;
  let x_411 : vec3<f32> = vec3<f32>(x_410.x, x_410.y, x_410.z);
  let x_412 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_411.x, x_411.y, x_411.z, x_412.w);
  let x_414 : vec4<f32> = u_xlat3;
  let x_418 : vec3<f32> = clamp(vec3<f32>(x_414.x, x_414.y, x_414.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_419 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_418.x, x_418.y, x_418.z, x_419.w);
  let x_421 : vec4<f32> = u_xlat3;
  u_xlat27 = dot(vec3<f32>(x_421.x, x_421.y, x_421.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  let x_428 : f32 = u_xlat27;
  u_xlat27 = sqrt(x_428);
  let x_432 : f32 = x_50.x_Grain_Params1.x;
  let x_433 : f32 = u_xlat27;
  u_xlat27 = ((x_432 * -(x_433)) + 1.0f);
  let x_437 : vec4<f32> = u_xlat0;
  let x_439 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_437.x, x_437.y, x_437.z) * x_439);
  let x_441 : vec3<f32> = u_xlat2;
  let x_443 : f32 = x_50.x_Grain_Params1.y;
  let x_445 : f32 = x_50.x_Grain_Params1.y;
  let x_447 : f32 = x_50.x_Grain_Params1.y;
  u_xlat2 = (x_441 * vec3<f32>(x_443, x_445, x_447));
  let x_450 : vec3<f32> = u_xlat2;
  let x_451 : f32 = u_xlat27;
  let x_454 : vec4<f32> = u_xlat0;
  let x_456 : vec3<f32> = ((x_450 * vec3<f32>(x_451, x_451, x_451)) + vec3<f32>(x_454.x, x_454.y, x_454.z));
  let x_457 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_456.x, x_456.y, x_456.z, x_457.w);
  let x_459 : vec4<f32> = u_xlat1;
  let x_463 : f32 = x_50.x_PostExposure;
  let x_465 : f32 = x_50.x_PostExposure;
  let x_467 : f32 = x_50.x_PostExposure;
  let x_469 : f32 = x_50.x_PostExposure;
  let x_470 : vec4<f32> = vec4<f32>(x_463, x_465, x_467, x_469);
  u_xlat0 = (vec4<f32>(x_459.w, x_459.x, x_459.y, x_459.z) * vec4<f32>(x_470.x, x_470.y, x_470.z, x_470.w));
  let x_477 : vec4<f32> = u_xlat0;
  let x_484 : vec3<f32> = ((vec3<f32>(x_477.y, x_477.z, x_477.w) * vec3<f32>(5.55555582f, 5.55555582f, 5.55555582f)) + vec3<f32>(0.047995999f, 0.047995999f, 0.047995999f));
  let x_485 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_484.x, x_484.y, x_484.z, x_485.w);
  let x_487 : vec4<f32> = u_xlat1;
  let x_489 : vec3<f32> = log2(vec3<f32>(x_487.x, x_487.y, x_487.z));
  let x_490 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_489.x, x_489.y, x_489.z, x_490.w);
  let x_492 : vec4<f32> = u_xlat1;
  let x_499 : vec3<f32> = ((vec3<f32>(x_492.x, x_492.y, x_492.z) * vec3<f32>(0.073499784f, 0.073499784f, 0.073499784f)) + vec3<f32>(0.386036009f, 0.386036009f, 0.386036009f));
  let x_500 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_499.x, x_499.y, x_499.z, x_500.w);
  let x_502 : vec4<f32> = u_xlat1;
  let x_506 : vec3<f32> = clamp(vec3<f32>(x_502.x, x_502.y, x_502.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_507 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_506.x, x_506.y, x_506.z, x_507.w);
  let x_509 : vec4<f32> = u_xlat1;
  let x_514 : vec2<f32> = x_50.x_Lut3D_Params;
  let x_516 : vec3<f32> = (vec3<f32>(x_509.x, x_509.y, x_509.z) * vec3<f32>(x_514.y, x_514.y, x_514.y));
  let x_517 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_516.x, x_516.y, x_516.z, x_517.w);
  let x_521 : f32 = x_50.x_Lut3D_Params.x;
  u_xlat28 = (x_521 * 0.5f);
  let x_523 : vec4<f32> = u_xlat1;
  let x_526 : vec2<f32> = x_50.x_Lut3D_Params;
  let x_529 : f32 = u_xlat28;
  let x_531 : vec3<f32> = ((vec3<f32>(x_523.x, x_523.y, x_523.z) * vec3<f32>(x_526.x, x_526.x, x_526.x)) + vec3<f32>(x_529, x_529, x_529));
  let x_532 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_531.x, x_531.y, x_531.z, x_532.w);
  let x_542 : vec4<f32> = u_xlat1;
  let x_544 : vec4<f32> = textureSample(x_Lut3D, sampler_Lut3D, vec3<f32>(x_542.x, x_542.y, x_542.z));
  let x_545 : vec3<f32> = vec3<f32>(x_544.x, x_544.y, x_544.z);
  let x_546 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_546.x, x_545.x, x_545.y, x_545.z);
  let x_551 : f32 = x_50.x_LumaInAlpha;
  u_xlatb1 = (0.5f < x_551);
  let x_553 : bool = u_xlatb1;
  if (x_553) {
    let x_556 : vec4<f32> = u_xlat0;
    let x_557 : vec3<f32> = vec3<f32>(x_556.y, x_556.z, x_556.w);
    let x_558 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_557.x, x_557.y, x_557.z, x_558.w);
    let x_560 : vec4<f32> = u_xlat1;
    let x_564 : vec3<f32> = clamp(vec3<f32>(x_560.x, x_560.y, x_560.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_565 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_564.x, x_564.y, x_564.z, x_565.w);
    let x_567 : vec4<f32> = u_xlat1;
    u_xlat0.x = dot(vec3<f32>(x_567.x, x_567.y, x_567.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  }
  let x_573 : vec4<f32> = u_xlat0;
  SV_Target0 = vec4<f32>(x_573.y, x_573.z, x_573.w, x_573.x);
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

