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
  x_BumpScale : f32,
  x_Metallic : f32,
  x_Glossiness : f32,
  @size(4)
  padding_2 : u32,
  unity_WorldToLight : mat4x4<f32>,
}

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(5) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_33 : PGlobals;

@group(0) @binding(1) var x_BumpMap : texture_2d<f32>;

@group(0) @binding(6) var sampler_BumpMap : sampler;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> vs_TEXCOORD5 : vec3<f32>;

@group(0) @binding(3) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(4) var samplerunity_ProbeVolumeSH : sampler;

@group(0) @binding(2) var x_LightTexture0 : texture_2d<f32>;

@group(0) @binding(7) var sampler_LightTexture0 : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec3<f32>;
  var u_xlat1 : vec3<f32>;
  var u_xlat21 : f32;
  var u_xlat2 : vec4<f32>;
  var u_xlat9 : vec3<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlat4 : vec3<f32>;
  var u_xlatb21 : bool;
  var u_xlat5 : vec4<f32>;
  var x_277 : vec3<f32>;
  var u_xlat22 : f32;
  var u_xlat6 : vec3<f32>;
  var u_xlat23 : f32;
  var u_xlat16 : f32;
  var u_xlat10 : f32;
  var u_xlat17 : f32;
  var u_xlatb22 : bool;
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
  let x_86 : vec4<f32> = vs_TEXCOORD0;
  let x_88 : vec4<f32> = textureSample(x_BumpMap, sampler_BumpMap, vec2<f32>(x_86.x, x_86.y));
  let x_89 : vec3<f32> = vec3<f32>(x_88.x, x_88.y, x_88.w);
  let x_90 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_89.x, x_89.y, x_89.z, x_90.w);
  let x_95 : f32 = u_xlat2.z;
  let x_98 : f32 = u_xlat2.x;
  u_xlat2.x = (x_95 * x_98);
  let x_101 : vec4<f32> = u_xlat2;
  let x_108 : vec2<f32> = ((vec2<f32>(x_101.x, x_101.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_109 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_108.x, x_108.y, x_109.z, x_109.w);
  let x_111 : vec4<f32> = u_xlat2;
  let x_115 : f32 = x_33.x_BumpScale;
  let x_117 : vec2<f32> = (vec2<f32>(x_111.x, x_111.y) * vec2<f32>(x_115, x_115));
  let x_118 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_117.x, x_117.y, x_118.z, x_118.w);
  let x_120 : vec4<f32> = u_xlat2;
  let x_122 : vec4<f32> = u_xlat2;
  u_xlat21 = dot(vec2<f32>(x_120.x, x_120.y), vec2<f32>(x_122.x, x_122.y));
  let x_125 : f32 = u_xlat21;
  u_xlat21 = min(x_125, 1.0f);
  let x_128 : f32 = u_xlat21;
  u_xlat21 = (-(x_128) + 1.0f);
  let x_131 : f32 = u_xlat21;
  u_xlat21 = sqrt(x_131);
  let x_134 : vec4<f32> = u_xlat2;
  let x_137 : vec4<f32> = vs_TEXCOORD3;
  u_xlat9 = (vec3<f32>(x_134.y, x_134.y, x_134.y) * vec3<f32>(x_137.x, x_137.y, x_137.z));
  let x_141 : vec4<f32> = vs_TEXCOORD2;
  let x_143 : vec4<f32> = u_xlat2;
  let x_146 : vec3<f32> = u_xlat9;
  let x_147 : vec3<f32> = ((vec3<f32>(x_141.x, x_141.y, x_141.z) * vec3<f32>(x_143.x, x_143.x, x_143.x)) + x_146);
  let x_148 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_147.x, x_147.y, x_147.z, x_148.w);
  let x_151 : vec4<f32> = vs_TEXCOORD4;
  let x_153 : f32 = u_xlat21;
  let x_156 : vec4<f32> = u_xlat2;
  let x_158 : vec3<f32> = ((vec3<f32>(x_151.x, x_151.y, x_151.z) * vec3<f32>(x_153, x_153, x_153)) + vec3<f32>(x_156.x, x_156.y, x_156.z));
  let x_159 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_158.x, x_158.y, x_158.z, x_159.w);
  let x_161 : vec4<f32> = u_xlat2;
  let x_163 : vec4<f32> = u_xlat2;
  u_xlat21 = dot(vec3<f32>(x_161.x, x_161.y, x_161.z), vec3<f32>(x_163.x, x_163.y, x_163.z));
  let x_166 : f32 = u_xlat21;
  u_xlat21 = inverseSqrt(x_166);
  let x_168 : f32 = u_xlat21;
  let x_170 : vec4<f32> = u_xlat2;
  let x_172 : vec3<f32> = (vec3<f32>(x_168, x_168, x_168) * vec3<f32>(x_170.x, x_170.y, x_170.z));
  let x_173 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_172.x, x_172.y, x_172.z, x_173.w);
  let x_176 : vec4<f32> = vs_TEXCOORD1;
  let x_178 : vec4<f32> = vs_TEXCOORD1;
  u_xlat21 = dot(vec3<f32>(x_176.x, x_176.y, x_176.z), vec3<f32>(x_178.x, x_178.y, x_178.z));
  let x_181 : f32 = u_xlat21;
  u_xlat21 = inverseSqrt(x_181);
  let x_184 : f32 = u_xlat21;
  let x_186 : vec4<f32> = vs_TEXCOORD1;
  u_xlat3 = (vec3<f32>(x_184, x_184, x_184) * vec3<f32>(x_186.x, x_186.y, x_186.z));
  let x_192 : vec3<f32> = vs_TEXCOORD5;
  let x_197 : vec4<f32> = x_33.unity_WorldToLight[1i];
  u_xlat4 = (vec3<f32>(x_192.y, x_192.y, x_192.y) * vec3<f32>(x_197.x, x_197.y, x_197.z));
  let x_202 : vec4<f32> = x_33.unity_WorldToLight[0i];
  let x_204 : vec3<f32> = vs_TEXCOORD5;
  let x_207 : vec3<f32> = u_xlat4;
  u_xlat4 = ((vec3<f32>(x_202.x, x_202.y, x_202.z) * vec3<f32>(x_204.x, x_204.x, x_204.x)) + x_207);
  let x_211 : vec4<f32> = x_33.unity_WorldToLight[2i];
  let x_213 : vec3<f32> = vs_TEXCOORD5;
  let x_216 : vec3<f32> = u_xlat4;
  u_xlat4 = ((vec3<f32>(x_211.x, x_211.y, x_211.z) * vec3<f32>(x_213.z, x_213.z, x_213.z)) + x_216);
  let x_218 : vec3<f32> = u_xlat4;
  let x_221 : vec4<f32> = x_33.unity_WorldToLight[3i];
  u_xlat4 = (x_218 + vec3<f32>(x_221.x, x_221.y, x_221.z));
  let x_228 : f32 = x_33.unity_ProbeVolumeParams.x;
  u_xlatb21 = (x_228 == 1.0f);
  let x_230 : bool = u_xlatb21;
  if (x_230) {
    let x_235 : f32 = x_33.unity_ProbeVolumeParams.y;
    u_xlatb21 = (x_235 == 1.0f);
    let x_238 : vec3<f32> = vs_TEXCOORD5;
    let x_241 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[1i];
    let x_243 : vec3<f32> = (vec3<f32>(x_238.y, x_238.y, x_238.y) * vec3<f32>(x_241.x, x_241.y, x_241.z));
    let x_244 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_243.x, x_243.y, x_243.z, x_244.w);
    let x_247 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[0i];
    let x_249 : vec3<f32> = vs_TEXCOORD5;
    let x_252 : vec4<f32> = u_xlat5;
    let x_254 : vec3<f32> = ((vec3<f32>(x_247.x, x_247.y, x_247.z) * vec3<f32>(x_249.x, x_249.x, x_249.x)) + vec3<f32>(x_252.x, x_252.y, x_252.z));
    let x_255 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_254.x, x_254.y, x_254.z, x_255.w);
    let x_258 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[2i];
    let x_260 : vec3<f32> = vs_TEXCOORD5;
    let x_263 : vec4<f32> = u_xlat5;
    let x_265 : vec3<f32> = ((vec3<f32>(x_258.x, x_258.y, x_258.z) * vec3<f32>(x_260.z, x_260.z, x_260.z)) + vec3<f32>(x_263.x, x_263.y, x_263.z));
    let x_266 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_265.x, x_265.y, x_265.z, x_266.w);
    let x_268 : vec4<f32> = u_xlat5;
    let x_271 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[3i];
    let x_273 : vec3<f32> = (vec3<f32>(x_268.x, x_268.y, x_268.z) + vec3<f32>(x_271.x, x_271.y, x_271.z));
    let x_274 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_273.x, x_273.y, x_273.z, x_274.w);
    let x_276 : bool = u_xlatb21;
    if (x_276) {
      let x_280 : vec4<f32> = u_xlat5;
      x_277 = vec3<f32>(x_280.x, x_280.y, x_280.z);
    } else {
      let x_283 : vec3<f32> = vs_TEXCOORD5;
      x_277 = x_283;
    }
    let x_284 : vec3<f32> = x_277;
    let x_285 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_284.x, x_284.y, x_284.z, x_285.w);
    let x_287 : vec4<f32> = u_xlat5;
    let x_292 : vec3<f32> = x_33.unity_ProbeVolumeMin;
    let x_294 : vec3<f32> = (vec3<f32>(x_287.x, x_287.y, x_287.z) + -(x_292));
    let x_295 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_294.x, x_294.y, x_294.z, x_295.w);
    let x_297 : vec4<f32> = u_xlat5;
    let x_300 : vec3<f32> = x_33.unity_ProbeVolumeSizeInv;
    let x_301 : vec3<f32> = (vec3<f32>(x_297.x, x_297.y, x_297.z) * x_300);
    let x_302 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_302.x, x_301.x, x_301.y, x_301.z);
    let x_305 : f32 = u_xlat5.y;
    u_xlat21 = ((x_305 * 0.25f) + 0.75f);
    let x_312 : f32 = x_33.unity_ProbeVolumeParams.z;
    u_xlat22 = ((x_312 * 0.5f) + 0.75f);
    let x_316 : f32 = u_xlat21;
    let x_317 : f32 = u_xlat22;
    u_xlat5.x = max(x_316, x_317);
    let x_328 : vec4<f32> = u_xlat5;
    let x_330 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_328.x, x_328.z, x_328.w));
    u_xlat5 = x_330;
  } else {
    u_xlat5.x = 1.0f;
    u_xlat5.y = 1.0f;
    u_xlat5.z = 1.0f;
    u_xlat5.w = 1.0f;
  }
  let x_337 : vec4<f32> = u_xlat5;
  let x_339 : vec4<f32> = x_33.unity_OcclusionMaskSelector;
  u_xlat21 = dot(x_337, x_339);
  let x_341 : f32 = u_xlat21;
  u_xlat21 = clamp(x_341, 0.0f, 1.0f);
  let x_344 : vec3<f32> = u_xlat4;
  let x_345 : vec3<f32> = u_xlat4;
  u_xlat22 = dot(x_344, x_345);
  let x_352 : f32 = u_xlat22;
  let x_354 : vec4<f32> = textureSample(x_LightTexture0, sampler_LightTexture0, vec2<f32>(x_352, x_352));
  u_xlat22 = x_354.x;
  let x_356 : f32 = u_xlat21;
  let x_357 : f32 = u_xlat22;
  u_xlat21 = (x_356 * x_357);
  let x_361 : f32 = vs_TEXCOORD2.w;
  u_xlat4.x = x_361;
  let x_364 : f32 = vs_TEXCOORD3.w;
  u_xlat4.y = x_364;
  let x_367 : f32 = vs_TEXCOORD4.w;
  u_xlat4.z = x_367;
  let x_369 : vec3<f32> = u_xlat4;
  let x_370 : vec3<f32> = u_xlat4;
  u_xlat22 = dot(x_369, x_370);
  let x_372 : f32 = u_xlat22;
  u_xlat22 = inverseSqrt(x_372);
  let x_374 : f32 = u_xlat22;
  let x_376 : vec3<f32> = u_xlat4;
  let x_377 : vec3<f32> = (vec3<f32>(x_374, x_374, x_374) * x_376);
  let x_378 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_377.x, x_377.y, x_377.z, x_378.w);
  let x_381 : f32 = u_xlat21;
  let x_385 : vec4<f32> = x_33.x_LightColor0;
  u_xlat6 = (vec3<f32>(x_381, x_381, x_381) * vec3<f32>(x_385.x, x_385.y, x_385.z));
  let x_390 : f32 = x_33.x_Glossiness;
  u_xlat21 = (-(x_390) + 1.0f);
  let x_393 : vec3<f32> = u_xlat4;
  let x_394 : f32 = u_xlat22;
  let x_397 : vec3<f32> = u_xlat3;
  u_xlat4 = ((x_393 * vec3<f32>(x_394, x_394, x_394)) + -(x_397));
  let x_400 : vec3<f32> = u_xlat4;
  let x_401 : vec3<f32> = u_xlat4;
  u_xlat22 = dot(x_400, x_401);
  let x_403 : f32 = u_xlat22;
  u_xlat22 = max(x_403, 0.001f);
  let x_406 : f32 = u_xlat22;
  u_xlat22 = inverseSqrt(x_406);
  let x_408 : f32 = u_xlat22;
  let x_410 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_408, x_408, x_408) * x_410);
  let x_412 : vec4<f32> = u_xlat2;
  let x_414 : vec3<f32> = u_xlat3;
  u_xlat22 = dot(vec3<f32>(x_412.x, x_412.y, x_412.z), -(x_414));
  let x_418 : vec4<f32> = u_xlat2;
  let x_420 : vec4<f32> = u_xlat5;
  u_xlat23 = dot(vec3<f32>(x_418.x, x_418.y, x_418.z), vec3<f32>(x_420.x, x_420.y, x_420.z));
  let x_423 : f32 = u_xlat23;
  u_xlat23 = clamp(x_423, 0.0f, 1.0f);
  let x_425 : vec4<f32> = u_xlat2;
  let x_427 : vec3<f32> = u_xlat4;
  u_xlat2.x = dot(vec3<f32>(x_425.x, x_425.y, x_425.z), x_427);
  let x_431 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_431, 0.0f, 1.0f);
  let x_434 : vec4<f32> = u_xlat5;
  let x_436 : vec3<f32> = u_xlat4;
  u_xlat9.x = dot(vec3<f32>(x_434.x, x_434.y, x_434.z), x_436);
  let x_440 : f32 = u_xlat9.x;
  u_xlat9.x = clamp(x_440, 0.0f, 1.0f);
  let x_445 : f32 = u_xlat9.x;
  let x_447 : f32 = u_xlat9.x;
  u_xlat16 = (x_445 * x_447);
  let x_449 : f32 = u_xlat16;
  let x_451 : f32 = u_xlat21;
  u_xlat16 = dot(vec2<f32>(x_449, x_449), vec2<f32>(x_451, x_451));
  let x_454 : f32 = u_xlat16;
  u_xlat16 = (x_454 + -0.5f);
  let x_457 : f32 = u_xlat23;
  u_xlat3.x = (-(x_457) + 1.0f);
  let x_463 : f32 = u_xlat3.x;
  let x_465 : f32 = u_xlat3.x;
  u_xlat10 = (x_463 * x_465);
  let x_467 : f32 = u_xlat10;
  let x_468 : f32 = u_xlat10;
  u_xlat10 = (x_467 * x_468);
  let x_471 : f32 = u_xlat3.x;
  let x_472 : f32 = u_xlat10;
  u_xlat3.x = (x_471 * x_472);
  let x_475 : f32 = u_xlat16;
  let x_477 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_475 * x_477) + 1.0f);
  let x_481 : f32 = u_xlat22;
  u_xlat10 = (-(abs(x_481)) + 1.0f);
  let x_486 : f32 = u_xlat10;
  let x_487 : f32 = u_xlat10;
  u_xlat17 = (x_486 * x_487);
  let x_489 : f32 = u_xlat17;
  let x_490 : f32 = u_xlat17;
  u_xlat17 = (x_489 * x_490);
  let x_492 : f32 = u_xlat10;
  let x_493 : f32 = u_xlat17;
  u_xlat10 = (x_492 * x_493);
  let x_495 : f32 = u_xlat16;
  let x_496 : f32 = u_xlat10;
  u_xlat16 = ((x_495 * x_496) + 1.0f);
  let x_499 : f32 = u_xlat16;
  let x_501 : f32 = u_xlat3.x;
  u_xlat16 = (x_499 * x_501);
  let x_503 : f32 = u_xlat23;
  let x_504 : f32 = u_xlat16;
  u_xlat16 = (x_503 * x_504);
  let x_506 : f32 = u_xlat21;
  let x_507 : f32 = u_xlat21;
  u_xlat21 = (x_506 * x_507);
  let x_509 : f32 = u_xlat21;
  u_xlat21 = max(x_509, 0.002f);
  let x_512 : f32 = u_xlat21;
  u_xlat3.x = (-(x_512) + 1.0f);
  let x_516 : f32 = u_xlat22;
  let x_519 : f32 = u_xlat3.x;
  let x_521 : f32 = u_xlat21;
  u_xlat10 = ((abs(x_516) * x_519) + x_521);
  let x_523 : f32 = u_xlat23;
  let x_525 : f32 = u_xlat3.x;
  let x_527 : f32 = u_xlat21;
  u_xlat3.x = ((x_523 * x_525) + x_527);
  let x_530 : f32 = u_xlat22;
  let x_533 : f32 = u_xlat3.x;
  u_xlat22 = (abs(x_530) * x_533);
  let x_535 : f32 = u_xlat23;
  let x_536 : f32 = u_xlat10;
  let x_538 : f32 = u_xlat22;
  u_xlat22 = ((x_535 * x_536) + x_538);
  let x_540 : f32 = u_xlat22;
  u_xlat22 = (x_540 + 0.00001f);
  let x_543 : f32 = u_xlat22;
  u_xlat22 = (0.5f / x_543);
  let x_545 : f32 = u_xlat21;
  let x_546 : f32 = u_xlat21;
  u_xlat21 = (x_545 * x_546);
  let x_549 : f32 = u_xlat2.x;
  let x_550 : f32 = u_xlat21;
  let x_553 : f32 = u_xlat2.x;
  u_xlat3.x = ((x_549 * x_550) + -(x_553));
  let x_558 : f32 = u_xlat3.x;
  let x_560 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_558 * x_560) + 1.0f);
  let x_564 : f32 = u_xlat21;
  u_xlat21 = (x_564 * 0.318309873f);
  let x_568 : f32 = u_xlat2.x;
  let x_570 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_568 * x_570) + 0.0000001f);
  let x_575 : f32 = u_xlat21;
  let x_577 : f32 = u_xlat2.x;
  u_xlat21 = (x_575 / x_577);
  let x_579 : f32 = u_xlat21;
  let x_580 : f32 = u_xlat22;
  u_xlat21 = (x_579 * x_580);
  let x_582 : f32 = u_xlat23;
  let x_583 : f32 = u_xlat21;
  u_xlat21 = (x_582 * x_583);
  let x_585 : f32 = u_xlat21;
  u_xlat21 = (x_585 * 3.141592741f);
  let x_588 : f32 = u_xlat21;
  u_xlat21 = max(x_588, 0.0f);
  let x_590 : vec3<f32> = u_xlat0;
  let x_591 : vec3<f32> = u_xlat0;
  u_xlat22 = dot(x_590, x_591);
  let x_594 : f32 = u_xlat22;
  u_xlatb22 = !((x_594 == 0.0f));
  let x_596 : bool = u_xlatb22;
  u_xlat22 = select(0.0f, 1.0f, x_596);
  let x_598 : f32 = u_xlat21;
  let x_599 : f32 = u_xlat22;
  u_xlat21 = (x_598 * x_599);
  let x_601 : f32 = u_xlat16;
  let x_603 : vec3<f32> = u_xlat6;
  let x_604 : vec3<f32> = (vec3<f32>(x_601, x_601, x_601) * x_603);
  let x_605 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_604.x, x_605.y, x_604.y, x_604.z);
  let x_607 : vec3<f32> = u_xlat6;
  let x_608 : f32 = u_xlat21;
  u_xlat3 = (x_607 * vec3<f32>(x_608, x_608, x_608));
  let x_612 : f32 = u_xlat9.x;
  u_xlat21 = (-(x_612) + 1.0f);
  let x_615 : f32 = u_xlat21;
  let x_616 : f32 = u_xlat21;
  u_xlat22 = (x_615 * x_616);
  let x_618 : f32 = u_xlat22;
  let x_619 : f32 = u_xlat22;
  u_xlat22 = (x_618 * x_619);
  let x_621 : f32 = u_xlat21;
  let x_622 : f32 = u_xlat22;
  u_xlat21 = (x_621 * x_622);
  let x_624 : vec3<f32> = u_xlat0;
  u_xlat4 = (-(x_624) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_628 : vec3<f32> = u_xlat4;
  let x_629 : f32 = u_xlat21;
  let x_632 : vec3<f32> = u_xlat0;
  u_xlat0 = ((x_628 * vec3<f32>(x_629, x_629, x_629)) + x_632);
  let x_634 : vec3<f32> = u_xlat0;
  let x_635 : vec3<f32> = u_xlat3;
  u_xlat0 = (x_634 * x_635);
  let x_639 : vec3<f32> = u_xlat1;
  let x_640 : vec4<f32> = u_xlat2;
  let x_643 : vec3<f32> = u_xlat0;
  let x_644 : vec3<f32> = ((x_639 * vec3<f32>(x_640.x, x_640.z, x_640.w)) + x_643);
  let x_645 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_644.x, x_644.y, x_644.z, x_645.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(4) vs_TEXCOORD4_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec4<f32>, @location(5) vs_TEXCOORD5_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD5 = vs_TEXCOORD5_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

