struct PGlobals {
  x_RenderViewportScaleFactor : f32,
  @size(12)
  padding : u32,
  x_Distortion_Amount : vec4<f32>,
  x_Distortion_CenterScale : vec4<f32>,
  x_Dithering_Coords : vec4<f32>,
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
}

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(3) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_AutoExposureTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> u_xlat9 : vec2<f32>;

var<private> u_xlat27 : f32;

@group(0) @binding(0) var<uniform> x_50 : PGlobals;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlati27 : i32;

var<private> u_xlatb10 : bool;

var<private> u_xlat2 : vec3<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat19 : vec2<f32>;

var<private> u_xlat29 : f32;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlat24 : vec2<f32>;

var<private> u_xlat7 : vec2<f32>;

var<private> u_xlat8 : f32;

var<private> u_xlat16 : f32;

var<private> u_xlat25 : f32;

var<private> u_xlat34 : f32;

var<private> u_xlat17 : f32;

var<private> u_xlatb26 : bool;

var<private> u_xlatb29 : bool;

@group(0) @binding(2) var x_MainTex : texture_2d<f32>;

@group(0) @binding(8) var sampler_MainTex : sampler;

@group(0) @binding(4) var x_ChromaticAberration_SpectralLut : texture_2d<f32>;

@group(0) @binding(10) var sampler_ChromaticAberration_SpectralLut : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(0) @binding(6) var x_GrainTex : texture_2d<f32>;

@group(0) @binding(12) var sampler_GrainTex : sampler;

@group(0) @binding(5) var x_Lut3D : texture_3d<f32>;

@group(0) @binding(11) var sampler_Lut3D : sampler;

@group(0) @binding(1) var x_DitheringTex : texture_2d<f32>;

@group(0) @binding(7) var sampler_DitheringTex : sampler;

var<private> u_xlat10 : vec3<f32>;

var<private> u_xlatb0 : vec3<bool>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlati20 : i32;

fn main_1() {
  var u_xlati_loop_1 : i32;
  var x_318 : f32;
  var x_651 : f32;
  var x_663 : f32;
  var x_675 : f32;
  var x_732 : f32;
  var x_745 : f32;
  var x_757 : f32;
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
  let x_95 : i32 = u_xlati27;
  u_xlati27 = min(x_95, 16i);
  let x_98 : i32 = u_xlati27;
  u_xlat1.x = f32(x_98);
  let x_101 : vec2<f32> = u_xlat9;
  let x_103 : vec4<f32> = u_xlat1;
  u_xlat9 = (-(x_101) / vec2<f32>(x_103.x, x_103.x));
  let x_113 : f32 = x_50.x_Distortion_Amount.w;
  u_xlatb10 = (0.0f < x_113);
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
  let x_135 : vec2<f32> = vs_TEXCOORD0;
  u_xlat19 = x_135;
  u_xlati_loop_1 = 0i;
  loop {
    let x_144 : i32 = u_xlati_loop_1;
    let x_145 : i32 = u_xlati27;
    if ((x_144 < x_145)) {
    } else {
      break;
    }
    let x_148 : i32 = u_xlati_loop_1;
    u_xlat29 = f32(x_148);
    let x_150 : f32 = u_xlat29;
    u_xlat29 = (x_150 + 0.5f);
    let x_152 : f32 = u_xlat29;
    let x_154 : f32 = u_xlat1.x;
    u_xlat2.x = (x_152 / x_154);
    let x_158 : vec2<f32> = u_xlat19;
    let x_161 : vec2<f32> = (x_158 + vec2<f32>(-0.5f, -0.5f));
    let x_162 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_161.x, x_161.y, x_162.z, x_162.w);
    let x_165 : vec4<f32> = u_xlat6;
    let x_168 : vec4<f32> = x_50.x_Distortion_Amount;
    u_xlat24 = ((vec2<f32>(x_165.x, x_165.y) * vec2<f32>(x_168.z, x_168.z)) + vec2<f32>(0.5f, 0.5f));
    let x_172 : vec4<f32> = u_xlat6;
    let x_175 : vec4<f32> = x_50.x_Distortion_Amount;
    let x_180 : vec4<f32> = x_50.x_Distortion_CenterScale;
    let x_183 : vec2<f32> = ((vec2<f32>(x_172.x, x_172.y) * vec2<f32>(x_175.z, x_175.z)) + -(vec2<f32>(x_180.x, x_180.y)));
    let x_184 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_183.x, x_183.y, x_184.z, x_184.w);
    let x_186 : vec4<f32> = u_xlat6;
    let x_189 : vec4<f32> = x_50.x_Distortion_CenterScale;
    let x_191 : vec2<f32> = (vec2<f32>(x_186.x, x_186.y) * vec2<f32>(x_189.z, x_189.w));
    let x_192 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_191.x, x_191.y, x_192.z, x_192.w);
    let x_194 : vec4<f32> = u_xlat6;
    let x_196 : vec4<f32> = u_xlat6;
    u_xlat29 = dot(vec2<f32>(x_194.x, x_194.y), vec2<f32>(x_196.x, x_196.y));
    let x_199 : f32 = u_xlat29;
    u_xlat29 = sqrt(x_199);
    let x_201 : bool = u_xlatb10;
    if (x_201) {
      let x_205 : f32 = u_xlat29;
      let x_208 : vec4<f32> = x_50.x_Distortion_Amount;
      u_xlat7 = (vec2<f32>(x_205, x_205) * vec2<f32>(x_208.x, x_208.y));
      let x_213 : f32 = u_xlat7.x;
      u_xlat8 = cos(x_213);
      let x_216 : f32 = u_xlat7.x;
      u_xlat7.x = sin(x_216);
      let x_220 : f32 = u_xlat7.x;
      let x_221 : f32 = u_xlat8;
      u_xlat7.x = (x_220 / x_221);
      let x_226 : f32 = u_xlat7.y;
      u_xlat16 = (1.0f / x_226);
      let x_229 : f32 = u_xlat7.x;
      let x_230 : f32 = u_xlat16;
      u_xlat7.x = ((x_229 * x_230) + -1.0f);
      let x_234 : vec4<f32> = u_xlat6;
      let x_236 : vec2<f32> = u_xlat7;
      let x_239 : vec2<f32> = u_xlat24;
      u_xlat7 = ((vec2<f32>(x_234.x, x_234.y) * vec2<f32>(x_236.x, x_236.x)) + x_239);
    } else {
      let x_243 : f32 = u_xlat29;
      u_xlat25 = (1.0f / x_243);
      let x_245 : f32 = u_xlat25;
      let x_247 : f32 = x_50.x_Distortion_Amount.x;
      u_xlat25 = (x_245 * x_247);
      let x_249 : f32 = u_xlat29;
      let x_251 : f32 = x_50.x_Distortion_Amount.y;
      u_xlat29 = (x_249 * x_251);
      let x_254 : f32 = u_xlat29;
      u_xlat34 = min(abs(x_254), 1.0f);
      let x_257 : f32 = u_xlat29;
      u_xlat8 = max(abs(x_257), 1.0f);
      let x_260 : f32 = u_xlat8;
      u_xlat8 = (1.0f / x_260);
      let x_262 : f32 = u_xlat34;
      let x_263 : f32 = u_xlat8;
      u_xlat34 = (x_262 * x_263);
      let x_265 : f32 = u_xlat34;
      let x_266 : f32 = u_xlat34;
      u_xlat8 = (x_265 * x_266);
      let x_269 : f32 = u_xlat8;
      u_xlat17 = ((x_269 * 0.0208351f) + -0.085133001f);
      let x_274 : f32 = u_xlat8;
      let x_275 : f32 = u_xlat17;
      u_xlat17 = ((x_274 * x_275) + 0.180141002f);
      let x_279 : f32 = u_xlat8;
      let x_280 : f32 = u_xlat17;
      u_xlat17 = ((x_279 * x_280) + -0.330299497f);
      let x_284 : f32 = u_xlat8;
      let x_285 : f32 = u_xlat17;
      u_xlat8 = ((x_284 * x_285) + 0.999866009f);
      let x_289 : f32 = u_xlat34;
      let x_290 : f32 = u_xlat8;
      u_xlat17 = (x_289 * x_290);
      let x_293 : f32 = u_xlat29;
      u_xlatb26 = (1.0f < abs(x_293));
      let x_296 : f32 = u_xlat17;
      u_xlat17 = ((x_296 * -2.0f) + 1.570796371f);
      let x_301 : bool = u_xlatb26;
      let x_302 : f32 = u_xlat17;
      u_xlat17 = select(0.0f, x_302, x_301);
      let x_304 : f32 = u_xlat34;
      let x_305 : f32 = u_xlat8;
      let x_307 : f32 = u_xlat17;
      u_xlat34 = ((x_304 * x_305) + x_307);
      let x_309 : f32 = u_xlat29;
      u_xlat29 = min(x_309, 1.0f);
      let x_312 : f32 = u_xlat29;
      let x_313 : f32 = u_xlat29;
      u_xlatb29 = (x_312 < -(x_313));
      let x_316 : bool = u_xlatb29;
      if (x_316) {
        let x_321 : f32 = u_xlat34;
        x_318 = -(x_321);
      } else {
        let x_324 : f32 = u_xlat34;
        x_318 = x_324;
      }
      let x_325 : f32 = x_318;
      u_xlat29 = x_325;
      let x_326 : f32 = u_xlat25;
      let x_327 : f32 = u_xlat29;
      u_xlat29 = ((x_326 * x_327) + -1.0f);
      let x_330 : vec4<f32> = u_xlat6;
      let x_332 : f32 = u_xlat29;
      let x_335 : vec2<f32> = u_xlat24;
      u_xlat7 = ((vec2<f32>(x_330.x, x_330.y) * vec2<f32>(x_332, x_332)) + x_335);
    }
    let x_337 : vec2<f32> = u_xlat7;
    u_xlat7 = x_337;
    let x_338 : vec2<f32> = u_xlat7;
    u_xlat7 = clamp(x_338, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
    let x_342 : vec2<f32> = u_xlat7;
    let x_344 : f32 = x_50.x_RenderViewportScaleFactor;
    let x_346 : vec2<f32> = (x_342 * vec2<f32>(x_344, x_344));
    let x_347 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_346.x, x_346.y, x_347.z, x_347.w);
    let x_354 : vec4<f32> = u_xlat6;
    let x_356 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, vec2<f32>(x_354.x, x_354.y), 0.0f);
    u_xlat6 = x_356;
    let x_362 : vec3<f32> = u_xlat2;
    let x_364 : vec4<f32> = textureSampleLevel(x_ChromaticAberration_SpectralLut, sampler_ChromaticAberration_SpectralLut, vec2<f32>(x_362.x, x_362.y), 0.0f);
    let x_365 : vec3<f32> = vec3<f32>(x_364.x, x_364.y, x_364.z);
    let x_366 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_365.x, x_365.y, x_365.z, x_366.w);
    let x_368 : vec4<f32> = u_xlat6;
    let x_369 : vec4<f32> = u_xlat3;
    let x_371 : vec4<f32> = u_xlat4;
    u_xlat4 = ((x_368 * x_369) + x_371);
    let x_373 : vec4<f32> = u_xlat3;
    let x_374 : vec4<f32> = u_xlat5;
    u_xlat5 = (x_373 + x_374);
    let x_376 : vec2<f32> = u_xlat9;
    let x_377 : vec2<f32> = u_xlat19;
    u_xlat19 = (x_376 + x_377);

    continuing {
      let x_379 : i32 = u_xlati_loop_1;
      u_xlati_loop_1 = (x_379 + 1i);
    }
  }
  let x_381 : vec4<f32> = u_xlat4;
  let x_382 : vec4<f32> = u_xlat5;
  u_xlat1 = (x_381 / x_382);
  let x_384 : vec4<f32> = u_xlat0;
  let x_386 : vec4<f32> = u_xlat1;
  let x_388 : vec3<f32> = (vec3<f32>(x_384.x, x_384.x, x_384.x) * vec3<f32>(x_386.x, x_386.y, x_386.z));
  let x_389 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_388.x, x_388.y, x_388.z, x_389.w);
  let x_392 : vec2<f32> = vs_TEXCOORD1;
  let x_395 : vec4<f32> = x_50.x_Grain_Params2;
  let x_399 : vec4<f32> = x_50.x_Grain_Params2;
  let x_401 : vec2<f32> = ((x_392 * vec2<f32>(x_395.x, x_395.y)) + vec2<f32>(x_399.z, x_399.w));
  let x_402 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_401.x, x_401.y, x_402.z);
  let x_409 : vec3<f32> = u_xlat2;
  let x_411 : vec4<f32> = textureSample(x_GrainTex, sampler_GrainTex, vec2<f32>(x_409.x, x_409.y));
  u_xlat2 = vec3<f32>(x_411.x, x_411.y, x_411.z);
  let x_413 : vec4<f32> = u_xlat0;
  let x_414 : vec3<f32> = vec3<f32>(x_413.x, x_413.y, x_413.z);
  let x_415 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_414.x, x_414.y, x_414.z, x_415.w);
  let x_417 : vec4<f32> = u_xlat3;
  let x_421 : vec3<f32> = clamp(vec3<f32>(x_417.x, x_417.y, x_417.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_422 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_421.x, x_421.y, x_421.z, x_422.w);
  let x_424 : vec4<f32> = u_xlat3;
  u_xlat27 = dot(vec3<f32>(x_424.x, x_424.y, x_424.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  let x_431 : f32 = u_xlat27;
  u_xlat27 = sqrt(x_431);
  let x_435 : f32 = x_50.x_Grain_Params1.x;
  let x_436 : f32 = u_xlat27;
  u_xlat27 = ((x_435 * -(x_436)) + 1.0f);
  let x_440 : vec4<f32> = u_xlat0;
  let x_442 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_440.x, x_440.y, x_440.z) * x_442);
  let x_444 : vec3<f32> = u_xlat2;
  let x_446 : f32 = x_50.x_Grain_Params1.y;
  let x_448 : f32 = x_50.x_Grain_Params1.y;
  let x_450 : f32 = x_50.x_Grain_Params1.y;
  u_xlat2 = (x_444 * vec3<f32>(x_446, x_448, x_450));
  let x_453 : vec3<f32> = u_xlat2;
  let x_454 : f32 = u_xlat27;
  let x_457 : vec4<f32> = u_xlat0;
  let x_459 : vec3<f32> = ((x_453 * vec3<f32>(x_454, x_454, x_454)) + vec3<f32>(x_457.x, x_457.y, x_457.z));
  let x_460 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_459.x, x_459.y, x_459.z, x_460.w);
  let x_462 : vec4<f32> = u_xlat1;
  let x_465 : f32 = x_50.x_PostExposure;
  let x_467 : f32 = x_50.x_PostExposure;
  let x_469 : f32 = x_50.x_PostExposure;
  let x_471 : f32 = x_50.x_PostExposure;
  let x_472 : vec4<f32> = vec4<f32>(x_465, x_467, x_469, x_471);
  u_xlat0 = (x_462 * vec4<f32>(x_472.x, x_472.y, x_472.z, x_472.w));
  let x_479 : vec4<f32> = u_xlat0;
  let x_486 : vec3<f32> = ((vec3<f32>(x_479.x, x_479.y, x_479.z) * vec3<f32>(5.55555582f, 5.55555582f, 5.55555582f)) + vec3<f32>(0.047995999f, 0.047995999f, 0.047995999f));
  let x_487 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_486.x, x_486.y, x_486.z, x_487.w);
  let x_489 : vec4<f32> = u_xlat0;
  let x_491 : vec3<f32> = log2(vec3<f32>(x_489.x, x_489.y, x_489.z));
  let x_492 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_491.x, x_491.y, x_491.z, x_492.w);
  let x_494 : vec4<f32> = u_xlat0;
  let x_501 : vec3<f32> = ((vec3<f32>(x_494.x, x_494.y, x_494.z) * vec3<f32>(0.073499784f, 0.073499784f, 0.073499784f)) + vec3<f32>(0.386036009f, 0.386036009f, 0.386036009f));
  let x_502 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_501.x, x_501.y, x_501.z, x_502.w);
  let x_504 : vec4<f32> = u_xlat0;
  let x_508 : vec3<f32> = clamp(vec3<f32>(x_504.x, x_504.y, x_504.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_509 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_508.x, x_508.y, x_508.z, x_509.w);
  let x_511 : vec4<f32> = u_xlat0;
  let x_516 : vec2<f32> = x_50.x_Lut3D_Params;
  let x_518 : vec3<f32> = (vec3<f32>(x_511.x, x_511.y, x_511.z) * vec3<f32>(x_516.y, x_516.y, x_516.y));
  let x_519 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_518.x, x_518.y, x_518.z, x_519.w);
  let x_522 : f32 = x_50.x_Lut3D_Params.x;
  u_xlat1.x = (x_522 * 0.5f);
  let x_525 : vec4<f32> = u_xlat0;
  let x_528 : vec2<f32> = x_50.x_Lut3D_Params;
  let x_531 : vec4<f32> = u_xlat1;
  let x_533 : vec3<f32> = ((vec3<f32>(x_525.x, x_525.y, x_525.z) * vec3<f32>(x_528.x, x_528.x, x_528.x)) + vec3<f32>(x_531.x, x_531.x, x_531.x));
  let x_534 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_533.x, x_533.y, x_533.z, x_534.w);
  let x_544 : vec4<f32> = u_xlat0;
  let x_546 : vec4<f32> = textureSample(x_Lut3D, sampler_Lut3D, vec3<f32>(x_544.x, x_544.y, x_544.z));
  let x_547 : vec3<f32> = vec3<f32>(x_546.x, x_546.y, x_546.z);
  let x_548 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_547.x, x_547.y, x_547.z, x_548.w);
  let x_550 : vec2<f32> = vs_TEXCOORD0;
  let x_552 : vec4<f32> = x_50.x_Dithering_Coords;
  let x_556 : vec4<f32> = x_50.x_Dithering_Coords;
  let x_558 : vec2<f32> = ((x_550 * vec2<f32>(x_552.x, x_552.y)) + vec2<f32>(x_556.z, x_556.w));
  let x_559 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_558.x, x_558.y, x_559.z, x_559.w);
  let x_566 : vec4<f32> = u_xlat1;
  let x_568 : vec4<f32> = textureSample(x_DitheringTex, sampler_DitheringTex, vec2<f32>(x_566.x, x_566.y));
  u_xlat1.x = x_568.w;
  let x_572 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_572 * 2.0f) + -1.0f);
  let x_578 : f32 = u_xlat1.x;
  u_xlat10.x = ((x_578 * 340282346638528859811704183484516925440.0f) + 0.5f);
  let x_584 : f32 = u_xlat10.x;
  u_xlat10.x = clamp(x_584, 0.0f, 1.0f);
  let x_588 : f32 = u_xlat10.x;
  u_xlat10.x = ((x_588 * 2.0f) + -1.0f);
  let x_593 : f32 = u_xlat1.x;
  u_xlat1.x = (-(abs(x_593)) + 1.0f);
  let x_599 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_599);
  let x_603 : f32 = u_xlat1.x;
  u_xlat1.x = (-(x_603) + 1.0f);
  let x_608 : f32 = u_xlat1.x;
  let x_610 : f32 = u_xlat10.x;
  u_xlat1.x = (x_608 * x_610);
  let x_613 : vec4<f32> = u_xlat0;
  u_xlat10 = (vec3<f32>(x_613.x, x_613.y, x_613.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_618 : vec4<f32> = u_xlat0;
  u_xlat2 = max(abs(vec3<f32>(x_618.x, x_618.y, x_618.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_624 : vec3<f32> = u_xlat2;
  u_xlat2 = log2(x_624);
  let x_626 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_626 * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_630 : vec3<f32> = u_xlat2;
  u_xlat2 = exp2(x_630);
  let x_632 : vec3<f32> = u_xlat2;
  u_xlat2 = ((x_632 * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_644 : vec4<f32> = u_xlat0;
  let x_647 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_644.x, x_644.y, x_644.z, x_644.x));
  u_xlatb0 = vec3<bool>(x_647.x, x_647.y, x_647.z);
  let x_650 : bool = u_xlatb0.x;
  if (x_650) {
    let x_655 : f32 = u_xlat10.x;
    x_651 = x_655;
  } else {
    let x_658 : f32 = u_xlat2.x;
    x_651 = x_658;
  }
  let x_659 : f32 = x_651;
  u_xlat0.x = x_659;
  let x_662 : bool = u_xlatb0.y;
  if (x_662) {
    let x_667 : f32 = u_xlat10.y;
    x_663 = x_667;
  } else {
    let x_670 : f32 = u_xlat2.y;
    x_663 = x_670;
  }
  let x_671 : f32 = x_663;
  u_xlat0.y = x_671;
  let x_674 : bool = u_xlatb0.z;
  if (x_674) {
    let x_679 : f32 = u_xlat10.z;
    x_675 = x_679;
  } else {
    let x_682 : f32 = u_xlat2.z;
    x_675 = x_682;
  }
  let x_683 : f32 = x_675;
  u_xlat0.z = x_683;
  let x_685 : vec4<f32> = u_xlat1;
  let x_690 : vec4<f32> = u_xlat0;
  let x_692 : vec3<f32> = ((vec3<f32>(x_685.x, x_685.x, x_685.x) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + vec3<f32>(x_690.x, x_690.y, x_690.z));
  let x_693 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_692.x, x_692.y, x_692.z, x_693.w);
  let x_695 : vec4<f32> = u_xlat0;
  let x_699 : vec3<f32> = (vec3<f32>(x_695.x, x_695.y, x_695.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_700 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_699.x, x_699.y, x_699.z, x_700.w);
  let x_702 : vec4<f32> = u_xlat0;
  u_xlat2 = (vec3<f32>(x_702.x, x_702.y, x_702.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_707 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_707 * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_711 : vec3<f32> = u_xlat2;
  u_xlat2 = max(abs(x_711), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_714 : vec3<f32> = u_xlat2;
  u_xlat2 = log2(x_714);
  let x_716 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_716 * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_720 : vec3<f32> = u_xlat2;
  u_xlat2 = exp2(x_720);
  let x_724 : vec4<f32> = u_xlat0;
  let x_726 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_724.x, x_724.y, x_724.z, x_724.x));
  u_xlatb0 = vec3<bool>(x_726.x, x_726.y, x_726.z);
  let x_731 : bool = u_xlatb0.x;
  if (x_731) {
    let x_736 : f32 = u_xlat1.x;
    x_732 = x_736;
  } else {
    let x_739 : f32 = u_xlat2.x;
    x_732 = x_739;
  }
  let x_740 : f32 = x_732;
  SV_Target0.x = x_740;
  let x_744 : bool = u_xlatb0.y;
  if (x_744) {
    let x_749 : f32 = u_xlat1.y;
    x_745 = x_749;
  } else {
    let x_752 : f32 = u_xlat2.y;
    x_745 = x_752;
  }
  let x_753 : f32 = x_745;
  SV_Target0.y = x_753;
  let x_756 : bool = u_xlatb0.z;
  if (x_756) {
    let x_761 : f32 = u_xlat1.z;
    x_757 = x_761;
  } else {
    let x_764 : f32 = u_xlat2.z;
    x_757 = x_764;
  }
  let x_765 : f32 = x_757;
  SV_Target0.z = x_765;
  let x_768 : f32 = u_xlat0.w;
  SV_Target0.w = x_768;
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

