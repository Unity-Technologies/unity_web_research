struct PGlobals {
  unity_OcclusionMaskSelector : vec4<f32>,
  unity_ProbeVolumeParams : vec4<f32>,
  unity_ProbeVolumeWorldToObject : mat4x4<f32>,
  unity_ProbeVolumeSizeInv : vec3<f32>,
  @size(4)
  padding : u32,
  unity_ProbeVolumeMin : vec3<f32>,
  @size(4)
  padding_1 : u32,
  x_LightColor0 : vec4<f32>,
  x_Color : vec4<f32>,
  x_Metallic : f32,
  x_Glossiness : f32,
  @size(8)
  padding_2 : u32,
  unity_WorldToLight : mat4x4<f32>,
}

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(5) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_33 : PGlobals;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> vs_TEXCOORD5 : vec3<f32>;

@group(0) @binding(3) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(4) var samplerunity_ProbeVolumeSH : sampler;

@group(0) @binding(1) var x_LightTexture0 : texture_2d<f32>;

@group(0) @binding(6) var sampler_LightTexture0 : sampler;

@group(0) @binding(2) var x_LightTextureB0 : texture_2d<f32>;

@group(0) @binding(7) var sampler_LightTextureB0 : sampler;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec3<f32>;
  var u_xlat1 : vec3<f32>;
  var u_xlat21 : f32;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlatb21 : bool;
  var u_xlat5 : vec4<f32>;
  var x_197 : vec3<f32>;
  var u_xlat22 : f32;
  var u_xlatb22 : bool;
  var u_xlat23 : f32;
  var u_xlat6 : vec3<f32>;
  var u_xlat9 : f32;
  var u_xlat16 : f32;
  var u_xlat10 : f32;
  var u_xlat17 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_24 : vec4<f32> = vs_TEXCOORD0;
  let x_26 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_24.x, x_24.y));
  u_xlat0 = vec3<f32>(x_26.x, x_26.y, x_26.z);
  let x_29 : vec3<f32> = u_xlat0;
  let x_38 : vec4<f32> = x_33.x_Color;
  u_xlat1 = (x_29 * vec3<f32>(x_38.x, x_38.y, x_38.z));
  let x_42 : vec4<f32> = x_33.x_Color;
  let x_44 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_42.x, x_42.y, x_42.z) * x_44) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_52 : f32 = x_33.x_Metallic;
  let x_54 : f32 = x_33.x_Metallic;
  let x_56 : f32 = x_33.x_Metallic;
  let x_57 : vec3<f32> = vec3<f32>(x_52, x_54, x_56);
  let x_62 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_57.x, x_57.y, x_57.z) * x_62) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_70 : f32 = x_33.x_Metallic;
  u_xlat21 = ((-(x_70) * 0.959999979f) + 0.959999979f);
  let x_75 : f32 = u_xlat21;
  let x_77 : vec3<f32> = u_xlat1;
  u_xlat1 = (vec3<f32>(x_75, x_75, x_75) * x_77);
  let x_80 : vec4<f32> = vs_TEXCOORD4;
  let x_82 : vec4<f32> = vs_TEXCOORD4;
  u_xlat21 = dot(vec3<f32>(x_80.x, x_80.y, x_80.z), vec3<f32>(x_82.x, x_82.y, x_82.z));
  let x_85 : f32 = u_xlat21;
  u_xlat21 = inverseSqrt(x_85);
  let x_89 : f32 = u_xlat21;
  let x_91 : vec4<f32> = vs_TEXCOORD4;
  let x_93 : vec3<f32> = (vec3<f32>(x_89, x_89, x_89) * vec3<f32>(x_91.x, x_91.y, x_91.z));
  let x_94 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_93.x, x_93.y, x_93.z, x_94.w);
  let x_97 : vec4<f32> = vs_TEXCOORD1;
  let x_99 : vec4<f32> = vs_TEXCOORD1;
  u_xlat21 = dot(vec3<f32>(x_97.x, x_97.y, x_97.z), vec3<f32>(x_99.x, x_99.y, x_99.z));
  let x_102 : f32 = u_xlat21;
  u_xlat21 = inverseSqrt(x_102);
  let x_105 : f32 = u_xlat21;
  let x_107 : vec4<f32> = vs_TEXCOORD1;
  u_xlat3 = (vec3<f32>(x_105, x_105, x_105) * vec3<f32>(x_107.x, x_107.y, x_107.z));
  let x_113 : vec3<f32> = vs_TEXCOORD5;
  let x_118 : vec4<f32> = x_33.unity_WorldToLight[1i];
  u_xlat4 = (vec4<f32>(x_113.y, x_113.y, x_113.y, x_113.y) * x_118);
  let x_122 : vec4<f32> = x_33.unity_WorldToLight[0i];
  let x_123 : vec3<f32> = vs_TEXCOORD5;
  let x_126 : vec4<f32> = u_xlat4;
  u_xlat4 = ((x_122 * vec4<f32>(x_123.x, x_123.x, x_123.x, x_123.x)) + x_126);
  let x_130 : vec4<f32> = x_33.unity_WorldToLight[2i];
  let x_131 : vec3<f32> = vs_TEXCOORD5;
  let x_134 : vec4<f32> = u_xlat4;
  u_xlat4 = ((x_130 * vec4<f32>(x_131.z, x_131.z, x_131.z, x_131.z)) + x_134);
  let x_136 : vec4<f32> = u_xlat4;
  let x_139 : vec4<f32> = x_33.unity_WorldToLight[3i];
  u_xlat4 = (x_136 + x_139);
  let x_147 : f32 = x_33.unity_ProbeVolumeParams.x;
  u_xlatb21 = (x_147 == 1.0f);
  let x_150 : bool = u_xlatb21;
  if (x_150) {
    let x_155 : f32 = x_33.unity_ProbeVolumeParams.y;
    u_xlatb21 = (x_155 == 1.0f);
    let x_158 : vec3<f32> = vs_TEXCOORD5;
    let x_161 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[1i];
    let x_163 : vec3<f32> = (vec3<f32>(x_158.y, x_158.y, x_158.y) * vec3<f32>(x_161.x, x_161.y, x_161.z));
    let x_164 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_163.x, x_163.y, x_163.z, x_164.w);
    let x_167 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[0i];
    let x_169 : vec3<f32> = vs_TEXCOORD5;
    let x_172 : vec4<f32> = u_xlat5;
    let x_174 : vec3<f32> = ((vec3<f32>(x_167.x, x_167.y, x_167.z) * vec3<f32>(x_169.x, x_169.x, x_169.x)) + vec3<f32>(x_172.x, x_172.y, x_172.z));
    let x_175 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_174.x, x_174.y, x_174.z, x_175.w);
    let x_178 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[2i];
    let x_180 : vec3<f32> = vs_TEXCOORD5;
    let x_183 : vec4<f32> = u_xlat5;
    let x_185 : vec3<f32> = ((vec3<f32>(x_178.x, x_178.y, x_178.z) * vec3<f32>(x_180.z, x_180.z, x_180.z)) + vec3<f32>(x_183.x, x_183.y, x_183.z));
    let x_186 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_185.x, x_185.y, x_185.z, x_186.w);
    let x_188 : vec4<f32> = u_xlat5;
    let x_191 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[3i];
    let x_193 : vec3<f32> = (vec3<f32>(x_188.x, x_188.y, x_188.z) + vec3<f32>(x_191.x, x_191.y, x_191.z));
    let x_194 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_193.x, x_193.y, x_193.z, x_194.w);
    let x_196 : bool = u_xlatb21;
    if (x_196) {
      let x_200 : vec4<f32> = u_xlat5;
      x_197 = vec3<f32>(x_200.x, x_200.y, x_200.z);
    } else {
      let x_203 : vec3<f32> = vs_TEXCOORD5;
      x_197 = x_203;
    }
    let x_204 : vec3<f32> = x_197;
    let x_205 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_204.x, x_204.y, x_204.z, x_205.w);
    let x_207 : vec4<f32> = u_xlat5;
    let x_212 : vec3<f32> = x_33.unity_ProbeVolumeMin;
    let x_214 : vec3<f32> = (vec3<f32>(x_207.x, x_207.y, x_207.z) + -(x_212));
    let x_215 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_214.x, x_214.y, x_214.z, x_215.w);
    let x_217 : vec4<f32> = u_xlat5;
    let x_220 : vec3<f32> = x_33.unity_ProbeVolumeSizeInv;
    let x_221 : vec3<f32> = (vec3<f32>(x_217.x, x_217.y, x_217.z) * x_220);
    let x_222 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_222.x, x_221.x, x_221.y, x_221.z);
    let x_225 : f32 = u_xlat5.y;
    u_xlat21 = ((x_225 * 0.25f) + 0.75f);
    let x_233 : f32 = x_33.unity_ProbeVolumeParams.z;
    u_xlat22 = ((x_233 * 0.5f) + 0.75f);
    let x_237 : f32 = u_xlat21;
    let x_238 : f32 = u_xlat22;
    u_xlat5.x = max(x_237, x_238);
    let x_249 : vec4<f32> = u_xlat5;
    let x_251 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_249.x, x_249.z, x_249.w));
    u_xlat5 = x_251;
  } else {
    u_xlat5.x = 1.0f;
    u_xlat5.y = 1.0f;
    u_xlat5.z = 1.0f;
    u_xlat5.w = 1.0f;
  }
  let x_258 : vec4<f32> = u_xlat5;
  let x_260 : vec4<f32> = x_33.unity_OcclusionMaskSelector;
  u_xlat21 = dot(x_258, x_260);
  let x_262 : f32 = u_xlat21;
  u_xlat21 = clamp(x_262, 0.0f, 1.0f);
  let x_267 : f32 = u_xlat4.z;
  u_xlatb22 = (0.0f < x_267);
  let x_269 : bool = u_xlatb22;
  u_xlat22 = select(0.0f, 1.0f, x_269);
  let x_271 : vec4<f32> = u_xlat4;
  let x_273 : vec4<f32> = u_xlat4;
  let x_275 : vec2<f32> = (vec2<f32>(x_271.x, x_271.y) / vec2<f32>(x_273.w, x_273.w));
  let x_276 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_275.x, x_275.y, x_276.z, x_276.w);
  let x_278 : vec4<f32> = u_xlat5;
  let x_281 : vec2<f32> = (vec2<f32>(x_278.x, x_278.y) + vec2<f32>(0.5f, 0.5f));
  let x_282 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_281.x, x_281.y, x_282.z, x_282.w);
  let x_290 : vec4<f32> = u_xlat5;
  let x_292 : vec4<f32> = textureSample(x_LightTexture0, sampler_LightTexture0, vec2<f32>(x_290.x, x_290.y));
  u_xlat23 = x_292.w;
  let x_294 : f32 = u_xlat22;
  let x_295 : f32 = u_xlat23;
  u_xlat22 = (x_294 * x_295);
  let x_297 : vec4<f32> = u_xlat4;
  let x_299 : vec4<f32> = u_xlat4;
  u_xlat23 = dot(vec3<f32>(x_297.x, x_297.y, x_297.z), vec3<f32>(x_299.x, x_299.y, x_299.z));
  let x_307 : f32 = u_xlat23;
  let x_309 : vec4<f32> = textureSample(x_LightTextureB0, sampler_LightTextureB0, vec2<f32>(x_307, x_307));
  u_xlat23 = x_309.x;
  let x_311 : f32 = u_xlat22;
  let x_312 : f32 = u_xlat23;
  u_xlat22 = (x_311 * x_312);
  let x_314 : f32 = u_xlat21;
  let x_315 : f32 = u_xlat22;
  u_xlat21 = (x_314 * x_315);
  let x_320 : f32 = vs_TEXCOORD2.w;
  u_xlat4.x = x_320;
  let x_324 : f32 = vs_TEXCOORD3.w;
  u_xlat4.y = x_324;
  let x_327 : f32 = vs_TEXCOORD4.w;
  u_xlat4.z = x_327;
  let x_329 : vec4<f32> = u_xlat4;
  let x_331 : vec4<f32> = u_xlat4;
  u_xlat22 = dot(vec3<f32>(x_329.x, x_329.y, x_329.z), vec3<f32>(x_331.x, x_331.y, x_331.z));
  let x_334 : f32 = u_xlat22;
  u_xlat22 = inverseSqrt(x_334);
  let x_336 : f32 = u_xlat22;
  let x_338 : vec4<f32> = u_xlat4;
  let x_340 : vec3<f32> = (vec3<f32>(x_336, x_336, x_336) * vec3<f32>(x_338.x, x_338.y, x_338.z));
  let x_341 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_340.x, x_340.y, x_340.z, x_341.w);
  let x_344 : f32 = u_xlat21;
  let x_348 : vec4<f32> = x_33.x_LightColor0;
  u_xlat6 = (vec3<f32>(x_344, x_344, x_344) * vec3<f32>(x_348.x, x_348.y, x_348.z));
  let x_353 : f32 = x_33.x_Glossiness;
  u_xlat21 = (-(x_353) + 1.0f);
  let x_356 : vec4<f32> = u_xlat4;
  let x_358 : f32 = u_xlat22;
  let x_361 : vec3<f32> = u_xlat3;
  let x_363 : vec3<f32> = ((vec3<f32>(x_356.x, x_356.y, x_356.z) * vec3<f32>(x_358, x_358, x_358)) + -(x_361));
  let x_364 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_363.x, x_363.y, x_363.z, x_364.w);
  let x_366 : vec4<f32> = u_xlat4;
  let x_368 : vec4<f32> = u_xlat4;
  u_xlat22 = dot(vec3<f32>(x_366.x, x_366.y, x_366.z), vec3<f32>(x_368.x, x_368.y, x_368.z));
  let x_371 : f32 = u_xlat22;
  u_xlat22 = max(x_371, 0.001f);
  let x_374 : f32 = u_xlat22;
  u_xlat22 = inverseSqrt(x_374);
  let x_376 : f32 = u_xlat22;
  let x_378 : vec4<f32> = u_xlat4;
  let x_380 : vec3<f32> = (vec3<f32>(x_376, x_376, x_376) * vec3<f32>(x_378.x, x_378.y, x_378.z));
  let x_381 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_380.x, x_380.y, x_380.z, x_381.w);
  let x_383 : vec4<f32> = u_xlat2;
  let x_385 : vec3<f32> = u_xlat3;
  u_xlat22 = dot(vec3<f32>(x_383.x, x_383.y, x_383.z), -(x_385));
  let x_388 : vec4<f32> = u_xlat2;
  let x_390 : vec4<f32> = u_xlat5;
  u_xlat23 = dot(vec3<f32>(x_388.x, x_388.y, x_388.z), vec3<f32>(x_390.x, x_390.y, x_390.z));
  let x_393 : f32 = u_xlat23;
  u_xlat23 = clamp(x_393, 0.0f, 1.0f);
  let x_395 : vec4<f32> = u_xlat2;
  let x_397 : vec4<f32> = u_xlat4;
  u_xlat2.x = dot(vec3<f32>(x_395.x, x_395.y, x_395.z), vec3<f32>(x_397.x, x_397.y, x_397.z));
  let x_402 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_402, 0.0f, 1.0f);
  let x_406 : vec4<f32> = u_xlat5;
  let x_408 : vec4<f32> = u_xlat4;
  u_xlat9 = dot(vec3<f32>(x_406.x, x_406.y, x_406.z), vec3<f32>(x_408.x, x_408.y, x_408.z));
  let x_411 : f32 = u_xlat9;
  u_xlat9 = clamp(x_411, 0.0f, 1.0f);
  let x_414 : f32 = u_xlat9;
  let x_415 : f32 = u_xlat9;
  u_xlat16 = (x_414 * x_415);
  let x_417 : f32 = u_xlat16;
  let x_419 : f32 = u_xlat21;
  u_xlat16 = dot(vec2<f32>(x_417, x_417), vec2<f32>(x_419, x_419));
  let x_422 : f32 = u_xlat16;
  u_xlat16 = (x_422 + -0.5f);
  let x_425 : f32 = u_xlat23;
  u_xlat3.x = (-(x_425) + 1.0f);
  let x_431 : f32 = u_xlat3.x;
  let x_433 : f32 = u_xlat3.x;
  u_xlat10 = (x_431 * x_433);
  let x_435 : f32 = u_xlat10;
  let x_436 : f32 = u_xlat10;
  u_xlat10 = (x_435 * x_436);
  let x_439 : f32 = u_xlat3.x;
  let x_440 : f32 = u_xlat10;
  u_xlat3.x = (x_439 * x_440);
  let x_443 : f32 = u_xlat16;
  let x_445 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_443 * x_445) + 1.0f);
  let x_449 : f32 = u_xlat22;
  u_xlat10 = (-(abs(x_449)) + 1.0f);
  let x_454 : f32 = u_xlat10;
  let x_455 : f32 = u_xlat10;
  u_xlat17 = (x_454 * x_455);
  let x_457 : f32 = u_xlat17;
  let x_458 : f32 = u_xlat17;
  u_xlat17 = (x_457 * x_458);
  let x_460 : f32 = u_xlat10;
  let x_461 : f32 = u_xlat17;
  u_xlat10 = (x_460 * x_461);
  let x_463 : f32 = u_xlat16;
  let x_464 : f32 = u_xlat10;
  u_xlat16 = ((x_463 * x_464) + 1.0f);
  let x_467 : f32 = u_xlat16;
  let x_469 : f32 = u_xlat3.x;
  u_xlat16 = (x_467 * x_469);
  let x_471 : f32 = u_xlat23;
  let x_472 : f32 = u_xlat16;
  u_xlat16 = (x_471 * x_472);
  let x_474 : f32 = u_xlat21;
  let x_475 : f32 = u_xlat21;
  u_xlat21 = (x_474 * x_475);
  let x_477 : f32 = u_xlat21;
  u_xlat21 = max(x_477, 0.002f);
  let x_480 : f32 = u_xlat21;
  u_xlat3.x = (-(x_480) + 1.0f);
  let x_484 : f32 = u_xlat22;
  let x_487 : f32 = u_xlat3.x;
  let x_489 : f32 = u_xlat21;
  u_xlat10 = ((abs(x_484) * x_487) + x_489);
  let x_491 : f32 = u_xlat23;
  let x_493 : f32 = u_xlat3.x;
  let x_495 : f32 = u_xlat21;
  u_xlat3.x = ((x_491 * x_493) + x_495);
  let x_498 : f32 = u_xlat22;
  let x_501 : f32 = u_xlat3.x;
  u_xlat22 = (abs(x_498) * x_501);
  let x_503 : f32 = u_xlat23;
  let x_504 : f32 = u_xlat10;
  let x_506 : f32 = u_xlat22;
  u_xlat22 = ((x_503 * x_504) + x_506);
  let x_508 : f32 = u_xlat22;
  u_xlat22 = (x_508 + 0.00001f);
  let x_511 : f32 = u_xlat22;
  u_xlat22 = (0.5f / x_511);
  let x_513 : f32 = u_xlat21;
  let x_514 : f32 = u_xlat21;
  u_xlat21 = (x_513 * x_514);
  let x_517 : f32 = u_xlat2.x;
  let x_518 : f32 = u_xlat21;
  let x_521 : f32 = u_xlat2.x;
  u_xlat3.x = ((x_517 * x_518) + -(x_521));
  let x_526 : f32 = u_xlat3.x;
  let x_528 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_526 * x_528) + 1.0f);
  let x_532 : f32 = u_xlat21;
  u_xlat21 = (x_532 * 0.318309873f);
  let x_536 : f32 = u_xlat2.x;
  let x_538 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_536 * x_538) + 0.0000001f);
  let x_543 : f32 = u_xlat21;
  let x_545 : f32 = u_xlat2.x;
  u_xlat21 = (x_543 / x_545);
  let x_547 : f32 = u_xlat21;
  let x_548 : f32 = u_xlat22;
  u_xlat21 = (x_547 * x_548);
  let x_550 : f32 = u_xlat23;
  let x_551 : f32 = u_xlat21;
  u_xlat21 = (x_550 * x_551);
  let x_553 : f32 = u_xlat21;
  u_xlat21 = (x_553 * 3.141592741f);
  let x_556 : f32 = u_xlat21;
  u_xlat21 = max(x_556, 0.0f);
  let x_558 : vec3<f32> = u_xlat0;
  let x_559 : vec3<f32> = u_xlat0;
  u_xlat22 = dot(x_558, x_559);
  let x_561 : f32 = u_xlat22;
  u_xlatb22 = !((x_561 == 0.0f));
  let x_563 : bool = u_xlatb22;
  u_xlat22 = select(0.0f, 1.0f, x_563);
  let x_565 : f32 = u_xlat21;
  let x_566 : f32 = u_xlat22;
  u_xlat21 = (x_565 * x_566);
  let x_568 : f32 = u_xlat16;
  let x_570 : vec3<f32> = u_xlat6;
  let x_571 : vec3<f32> = (vec3<f32>(x_568, x_568, x_568) * x_570);
  let x_572 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_571.x, x_572.y, x_571.y, x_571.z);
  let x_574 : vec3<f32> = u_xlat6;
  let x_575 : f32 = u_xlat21;
  u_xlat3 = (x_574 * vec3<f32>(x_575, x_575, x_575));
  let x_578 : f32 = u_xlat9;
  u_xlat21 = (-(x_578) + 1.0f);
  let x_581 : f32 = u_xlat21;
  let x_582 : f32 = u_xlat21;
  u_xlat22 = (x_581 * x_582);
  let x_584 : f32 = u_xlat22;
  let x_585 : f32 = u_xlat22;
  u_xlat22 = (x_584 * x_585);
  let x_587 : f32 = u_xlat21;
  let x_588 : f32 = u_xlat22;
  u_xlat21 = (x_587 * x_588);
  let x_590 : vec3<f32> = u_xlat0;
  let x_593 : vec3<f32> = (-(x_590) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_594 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_593.x, x_593.y, x_593.z, x_594.w);
  let x_596 : vec4<f32> = u_xlat4;
  let x_598 : f32 = u_xlat21;
  let x_601 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_596.x, x_596.y, x_596.z) * vec3<f32>(x_598, x_598, x_598)) + x_601);
  let x_603 : vec3<f32> = u_xlat0;
  let x_604 : vec3<f32> = u_xlat3;
  u_xlat0 = (x_603 * x_604);
  let x_608 : vec3<f32> = u_xlat1;
  let x_609 : vec4<f32> = u_xlat2;
  let x_612 : vec3<f32> = u_xlat0;
  let x_613 : vec3<f32> = ((x_608 * vec3<f32>(x_609.x, x_609.z, x_609.w)) + x_612);
  let x_614 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_613.x, x_613.y, x_613.z, x_614.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec4<f32>, @location(4) vs_TEXCOORD4_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec4<f32>, @location(5) vs_TEXCOORD5_param : vec3<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD5 = vs_TEXCOORD5_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

