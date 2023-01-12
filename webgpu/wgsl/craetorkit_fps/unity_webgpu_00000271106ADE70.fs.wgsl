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
  var u_xlatb22 : bool;
  var u_xlat5 : vec4<f32>;
  var x_288 : vec3<f32>;
  var u_xlat22 : f32;
  var u_xlat23 : f32;
  var u_xlat6 : vec3<f32>;
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
  let x_199 : vec2<f32> = (vec2<f32>(x_192.y, x_192.y) * vec2<f32>(x_197.x, x_197.y));
  let x_200 : vec3<f32> = u_xlat4;
  u_xlat4 = vec3<f32>(x_199.x, x_199.y, x_200.z);
  let x_204 : vec4<f32> = x_33.unity_WorldToLight[0i];
  let x_206 : vec3<f32> = vs_TEXCOORD5;
  let x_209 : vec3<f32> = u_xlat4;
  let x_211 : vec2<f32> = ((vec2<f32>(x_204.x, x_204.y) * vec2<f32>(x_206.x, x_206.x)) + vec2<f32>(x_209.x, x_209.y));
  let x_212 : vec3<f32> = u_xlat4;
  u_xlat4 = vec3<f32>(x_211.x, x_211.y, x_212.z);
  let x_216 : vec4<f32> = x_33.unity_WorldToLight[2i];
  let x_218 : vec3<f32> = vs_TEXCOORD5;
  let x_221 : vec3<f32> = u_xlat4;
  let x_223 : vec2<f32> = ((vec2<f32>(x_216.x, x_216.y) * vec2<f32>(x_218.z, x_218.z)) + vec2<f32>(x_221.x, x_221.y));
  let x_224 : vec3<f32> = u_xlat4;
  u_xlat4 = vec3<f32>(x_223.x, x_223.y, x_224.z);
  let x_226 : vec3<f32> = u_xlat4;
  let x_230 : vec4<f32> = x_33.unity_WorldToLight[3i];
  let x_232 : vec2<f32> = (vec2<f32>(x_226.x, x_226.y) + vec2<f32>(x_230.x, x_230.y));
  let x_233 : vec3<f32> = u_xlat4;
  u_xlat4 = vec3<f32>(x_232.x, x_232.y, x_233.z);
  let x_239 : f32 = x_33.unity_ProbeVolumeParams.x;
  u_xlatb22 = (x_239 == 1.0f);
  let x_241 : bool = u_xlatb22;
  if (x_241) {
    let x_246 : f32 = x_33.unity_ProbeVolumeParams.y;
    u_xlatb22 = (x_246 == 1.0f);
    let x_249 : vec3<f32> = vs_TEXCOORD5;
    let x_252 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[1i];
    let x_254 : vec3<f32> = (vec3<f32>(x_249.y, x_249.y, x_249.y) * vec3<f32>(x_252.x, x_252.y, x_252.z));
    let x_255 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_254.x, x_254.y, x_254.z, x_255.w);
    let x_258 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[0i];
    let x_260 : vec3<f32> = vs_TEXCOORD5;
    let x_263 : vec4<f32> = u_xlat5;
    let x_265 : vec3<f32> = ((vec3<f32>(x_258.x, x_258.y, x_258.z) * vec3<f32>(x_260.x, x_260.x, x_260.x)) + vec3<f32>(x_263.x, x_263.y, x_263.z));
    let x_266 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_265.x, x_265.y, x_265.z, x_266.w);
    let x_269 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[2i];
    let x_271 : vec3<f32> = vs_TEXCOORD5;
    let x_274 : vec4<f32> = u_xlat5;
    let x_276 : vec3<f32> = ((vec3<f32>(x_269.x, x_269.y, x_269.z) * vec3<f32>(x_271.z, x_271.z, x_271.z)) + vec3<f32>(x_274.x, x_274.y, x_274.z));
    let x_277 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_276.x, x_276.y, x_276.z, x_277.w);
    let x_279 : vec4<f32> = u_xlat5;
    let x_282 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[3i];
    let x_284 : vec3<f32> = (vec3<f32>(x_279.x, x_279.y, x_279.z) + vec3<f32>(x_282.x, x_282.y, x_282.z));
    let x_285 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_284.x, x_284.y, x_284.z, x_285.w);
    let x_287 : bool = u_xlatb22;
    if (x_287) {
      let x_291 : vec4<f32> = u_xlat5;
      x_288 = vec3<f32>(x_291.x, x_291.y, x_291.z);
    } else {
      let x_294 : vec3<f32> = vs_TEXCOORD5;
      x_288 = x_294;
    }
    let x_295 : vec3<f32> = x_288;
    let x_296 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_295.x, x_295.y, x_295.z, x_296.w);
    let x_298 : vec4<f32> = u_xlat5;
    let x_303 : vec3<f32> = x_33.unity_ProbeVolumeMin;
    let x_305 : vec3<f32> = (vec3<f32>(x_298.x, x_298.y, x_298.z) + -(x_303));
    let x_306 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_305.x, x_305.y, x_305.z, x_306.w);
    let x_308 : vec4<f32> = u_xlat5;
    let x_311 : vec3<f32> = x_33.unity_ProbeVolumeSizeInv;
    let x_312 : vec3<f32> = (vec3<f32>(x_308.x, x_308.y, x_308.z) * x_311);
    let x_313 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_313.x, x_312.x, x_312.y, x_312.z);
    let x_317 : f32 = u_xlat5.y;
    u_xlat22 = ((x_317 * 0.25f) + 0.75f);
    let x_324 : f32 = x_33.unity_ProbeVolumeParams.z;
    u_xlat23 = ((x_324 * 0.5f) + 0.75f);
    let x_328 : f32 = u_xlat22;
    let x_329 : f32 = u_xlat23;
    u_xlat5.x = max(x_328, x_329);
    let x_340 : vec4<f32> = u_xlat5;
    let x_342 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_340.x, x_340.z, x_340.w));
    u_xlat5 = x_342;
  } else {
    u_xlat5.x = 1.0f;
    u_xlat5.y = 1.0f;
    u_xlat5.z = 1.0f;
    u_xlat5.w = 1.0f;
  }
  let x_349 : vec4<f32> = u_xlat5;
  let x_351 : vec4<f32> = x_33.unity_OcclusionMaskSelector;
  u_xlat22 = dot(x_349, x_351);
  let x_353 : f32 = u_xlat22;
  u_xlat22 = clamp(x_353, 0.0f, 1.0f);
  let x_361 : vec3<f32> = u_xlat4;
  let x_363 : vec4<f32> = textureSample(x_LightTexture0, sampler_LightTexture0, vec2<f32>(x_361.x, x_361.y));
  u_xlat23 = x_363.w;
  let x_365 : f32 = u_xlat22;
  let x_366 : f32 = u_xlat23;
  u_xlat22 = (x_365 * x_366);
  let x_368 : f32 = u_xlat22;
  let x_372 : vec4<f32> = x_33.x_LightColor0;
  u_xlat4 = (vec3<f32>(x_368, x_368, x_368) * vec3<f32>(x_372.x, x_372.y, x_372.z));
  let x_377 : f32 = x_33.x_Glossiness;
  u_xlat22 = (-(x_377) + 1.0f);
  let x_382 : f32 = vs_TEXCOORD2.w;
  u_xlat5.x = x_382;
  let x_385 : f32 = vs_TEXCOORD3.w;
  u_xlat5.y = x_385;
  let x_388 : f32 = vs_TEXCOORD4.w;
  u_xlat5.z = x_388;
  let x_391 : vec4<f32> = vs_TEXCOORD1;
  let x_394 : f32 = u_xlat21;
  let x_397 : vec4<f32> = u_xlat5;
  u_xlat6 = ((-(vec3<f32>(x_391.x, x_391.y, x_391.z)) * vec3<f32>(x_394, x_394, x_394)) + vec3<f32>(x_397.x, x_397.y, x_397.z));
  let x_400 : vec3<f32> = u_xlat6;
  let x_401 : vec3<f32> = u_xlat6;
  u_xlat21 = dot(x_400, x_401);
  let x_403 : f32 = u_xlat21;
  u_xlat21 = max(x_403, 0.001f);
  let x_406 : f32 = u_xlat21;
  u_xlat21 = inverseSqrt(x_406);
  let x_408 : f32 = u_xlat21;
  let x_410 : vec3<f32> = u_xlat6;
  u_xlat6 = (vec3<f32>(x_408, x_408, x_408) * x_410);
  let x_412 : vec4<f32> = u_xlat2;
  let x_414 : vec3<f32> = u_xlat3;
  u_xlat21 = dot(vec3<f32>(x_412.x, x_412.y, x_412.z), -(x_414));
  let x_417 : vec4<f32> = u_xlat2;
  let x_419 : vec4<f32> = u_xlat5;
  u_xlat23 = dot(vec3<f32>(x_417.x, x_417.y, x_417.z), vec3<f32>(x_419.x, x_419.y, x_419.z));
  let x_422 : f32 = u_xlat23;
  u_xlat23 = clamp(x_422, 0.0f, 1.0f);
  let x_424 : vec4<f32> = u_xlat2;
  let x_426 : vec3<f32> = u_xlat6;
  u_xlat2.x = dot(vec3<f32>(x_424.x, x_424.y, x_424.z), x_426);
  let x_430 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_430, 0.0f, 1.0f);
  let x_433 : vec4<f32> = u_xlat5;
  let x_435 : vec3<f32> = u_xlat6;
  u_xlat9.x = dot(vec3<f32>(x_433.x, x_433.y, x_433.z), x_435);
  let x_439 : f32 = u_xlat9.x;
  u_xlat9.x = clamp(x_439, 0.0f, 1.0f);
  let x_444 : f32 = u_xlat9.x;
  let x_446 : f32 = u_xlat9.x;
  u_xlat16 = (x_444 * x_446);
  let x_448 : f32 = u_xlat16;
  let x_450 : f32 = u_xlat22;
  u_xlat16 = dot(vec2<f32>(x_448, x_448), vec2<f32>(x_450, x_450));
  let x_453 : f32 = u_xlat16;
  u_xlat16 = (x_453 + -0.5f);
  let x_456 : f32 = u_xlat23;
  u_xlat3.x = (-(x_456) + 1.0f);
  let x_462 : f32 = u_xlat3.x;
  let x_464 : f32 = u_xlat3.x;
  u_xlat10 = (x_462 * x_464);
  let x_466 : f32 = u_xlat10;
  let x_467 : f32 = u_xlat10;
  u_xlat10 = (x_466 * x_467);
  let x_470 : f32 = u_xlat3.x;
  let x_471 : f32 = u_xlat10;
  u_xlat3.x = (x_470 * x_471);
  let x_474 : f32 = u_xlat16;
  let x_476 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_474 * x_476) + 1.0f);
  let x_480 : f32 = u_xlat21;
  u_xlat10 = (-(abs(x_480)) + 1.0f);
  let x_485 : f32 = u_xlat10;
  let x_486 : f32 = u_xlat10;
  u_xlat17 = (x_485 * x_486);
  let x_488 : f32 = u_xlat17;
  let x_489 : f32 = u_xlat17;
  u_xlat17 = (x_488 * x_489);
  let x_491 : f32 = u_xlat10;
  let x_492 : f32 = u_xlat17;
  u_xlat10 = (x_491 * x_492);
  let x_494 : f32 = u_xlat16;
  let x_495 : f32 = u_xlat10;
  u_xlat16 = ((x_494 * x_495) + 1.0f);
  let x_498 : f32 = u_xlat16;
  let x_500 : f32 = u_xlat3.x;
  u_xlat16 = (x_498 * x_500);
  let x_502 : f32 = u_xlat23;
  let x_503 : f32 = u_xlat16;
  u_xlat16 = (x_502 * x_503);
  let x_505 : f32 = u_xlat22;
  let x_506 : f32 = u_xlat22;
  u_xlat22 = (x_505 * x_506);
  let x_508 : f32 = u_xlat22;
  u_xlat22 = max(x_508, 0.002f);
  let x_511 : f32 = u_xlat22;
  u_xlat3.x = (-(x_511) + 1.0f);
  let x_515 : f32 = u_xlat21;
  let x_518 : f32 = u_xlat3.x;
  let x_520 : f32 = u_xlat22;
  u_xlat10 = ((abs(x_515) * x_518) + x_520);
  let x_522 : f32 = u_xlat23;
  let x_524 : f32 = u_xlat3.x;
  let x_526 : f32 = u_xlat22;
  u_xlat3.x = ((x_522 * x_524) + x_526);
  let x_529 : f32 = u_xlat21;
  let x_532 : f32 = u_xlat3.x;
  u_xlat21 = (abs(x_529) * x_532);
  let x_534 : f32 = u_xlat23;
  let x_535 : f32 = u_xlat10;
  let x_537 : f32 = u_xlat21;
  u_xlat21 = ((x_534 * x_535) + x_537);
  let x_539 : f32 = u_xlat21;
  u_xlat21 = (x_539 + 0.00001f);
  let x_542 : f32 = u_xlat21;
  u_xlat21 = (0.5f / x_542);
  let x_544 : f32 = u_xlat22;
  let x_545 : f32 = u_xlat22;
  u_xlat22 = (x_544 * x_545);
  let x_548 : f32 = u_xlat2.x;
  let x_549 : f32 = u_xlat22;
  let x_552 : f32 = u_xlat2.x;
  u_xlat3.x = ((x_548 * x_549) + -(x_552));
  let x_557 : f32 = u_xlat3.x;
  let x_559 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_557 * x_559) + 1.0f);
  let x_563 : f32 = u_xlat22;
  u_xlat22 = (x_563 * 0.318309873f);
  let x_567 : f32 = u_xlat2.x;
  let x_569 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_567 * x_569) + 0.0000001f);
  let x_574 : f32 = u_xlat22;
  let x_576 : f32 = u_xlat2.x;
  u_xlat22 = (x_574 / x_576);
  let x_578 : f32 = u_xlat21;
  let x_579 : f32 = u_xlat22;
  u_xlat21 = (x_578 * x_579);
  let x_581 : f32 = u_xlat23;
  let x_582 : f32 = u_xlat21;
  u_xlat21 = (x_581 * x_582);
  let x_584 : f32 = u_xlat21;
  u_xlat21 = (x_584 * 3.141592741f);
  let x_587 : f32 = u_xlat21;
  u_xlat21 = max(x_587, 0.0f);
  let x_589 : vec3<f32> = u_xlat0;
  let x_590 : vec3<f32> = u_xlat0;
  u_xlat22 = dot(x_589, x_590);
  let x_592 : f32 = u_xlat22;
  u_xlatb22 = !((x_592 == 0.0f));
  let x_594 : bool = u_xlatb22;
  u_xlat22 = select(0.0f, 1.0f, x_594);
  let x_596 : f32 = u_xlat21;
  let x_597 : f32 = u_xlat22;
  u_xlat21 = (x_596 * x_597);
  let x_599 : f32 = u_xlat16;
  let x_601 : vec3<f32> = u_xlat4;
  let x_602 : vec3<f32> = (vec3<f32>(x_599, x_599, x_599) * x_601);
  let x_603 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_602.x, x_603.y, x_602.y, x_602.z);
  let x_605 : vec3<f32> = u_xlat4;
  let x_606 : f32 = u_xlat21;
  u_xlat3 = (x_605 * vec3<f32>(x_606, x_606, x_606));
  let x_610 : f32 = u_xlat9.x;
  u_xlat21 = (-(x_610) + 1.0f);
  let x_613 : f32 = u_xlat21;
  let x_614 : f32 = u_xlat21;
  u_xlat22 = (x_613 * x_614);
  let x_616 : f32 = u_xlat22;
  let x_617 : f32 = u_xlat22;
  u_xlat22 = (x_616 * x_617);
  let x_619 : f32 = u_xlat21;
  let x_620 : f32 = u_xlat22;
  u_xlat21 = (x_619 * x_620);
  let x_622 : vec3<f32> = u_xlat0;
  u_xlat4 = (-(x_622) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_626 : vec3<f32> = u_xlat4;
  let x_627 : f32 = u_xlat21;
  let x_630 : vec3<f32> = u_xlat0;
  u_xlat0 = ((x_626 * vec3<f32>(x_627, x_627, x_627)) + x_630);
  let x_632 : vec3<f32> = u_xlat0;
  let x_633 : vec3<f32> = u_xlat3;
  u_xlat0 = (x_632 * x_633);
  let x_637 : vec3<f32> = u_xlat1;
  let x_638 : vec4<f32> = u_xlat2;
  let x_641 : vec3<f32> = u_xlat0;
  let x_642 : vec3<f32> = ((x_637 * vec3<f32>(x_638.x, x_638.z, x_638.w)) + x_641);
  let x_643 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_642.x, x_642.y, x_642.z, x_643.w);
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

