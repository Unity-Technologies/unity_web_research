struct PGlobals {
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding : u32,
  x_WorldSpaceLightPos0 : vec4<f32>,
  unity_OcclusionMaskSelector : vec4<f32>,
  x_LightShadowData : vec4<f32>,
  unity_ShadowFadeCenterAndType : vec4<f32>,
  unity_MatrixV : mat4x4<f32>,
  unity_ProbeVolumeParams : vec4<f32>,
  unity_ProbeVolumeWorldToObject : mat4x4<f32>,
  unity_ProbeVolumeSizeInv : vec3<f32>,
  @size(4)
  padding_1 : u32,
  unity_ProbeVolumeMin : vec3<f32>,
  @size(4)
  padding_2 : u32,
  x_LightColor0 : vec4<f32>,
  unity_WorldToLight : mat4x4<f32>,
  x_Glossiness : f32,
  x_Metallic : f32,
  x_Cutoff : f32,
  x_EdgeSize : f32,
  x_Color : vec4<f32>,
}

var<private> u_xlat0 : vec3<f32>;

var<private> vs_TEXCOORD4 : vec3<f32>;

@group(0) @binding(0) var<uniform> x_18 : PGlobals;

var<private> u_xlat21 : f32;

var<private> u_xlat1 : vec3<f32>;

var<private> u_xlat22 : f32;

@group(0) @binding(1) var x_Noise : texture_2d<f32>;

@group(0) @binding(12) var sampler_Noise : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> u_xlat2 : vec4<f32>;

@group(0) @binding(2) var x_MetallicSmooth : texture_2d<f32>;

@group(0) @binding(14) var sampler_MetallicSmooth : sampler;

var<private> u_xlat16 : vec2<f32>;

var<private> u_xlat3 : vec3<f32>;

@group(0) @binding(3) var x_MainTex : texture_2d<f32>;

@group(0) @binding(11) var sampler_MainTex : sampler;

var<private> u_xlat4 : vec3<f32>;

var<private> u_xlat5 : vec3<f32>;

@group(0) @binding(4) var x_Normal : texture_2d<f32>;

@group(0) @binding(13) var sampler_Normal : sampler;

var<private> u_xlat23 : f32;

var<private> u_xlatb22 : bool;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlat24 : f32;

var<private> u_xlatb24 : bool;

var<private> u_xlat25 : f32;

@group(0) @binding(7) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(8) var samplerunity_ProbeVolumeSH : sampler;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(5) var x_ShadowMapTexture : texture_2d<f32>;

@group(0) @binding(9) var sampler_ShadowMapTexture : sampler;

@group(0) @binding(6) var x_LightTexture0 : texture_2d<f32>;

@group(0) @binding(10) var sampler_LightTexture0 : sampler;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

var<private> u_xlat8 : f32;

var<private> u_xlat7 : vec3<f32>;

var<private> u_xlat14 : f32;

var<private> u_xlat15 : f32;

var<private> u_xlat9 : f32;

var<private> u_xlatb21 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_331 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_12 : vec3<f32> = vs_TEXCOORD4;
  let x_23 : vec3<f32> = x_18.x_WorldSpaceCameraPos;
  u_xlat0 = (-(x_12) + x_23);
  let x_27 : vec3<f32> = u_xlat0;
  let x_28 : vec3<f32> = u_xlat0;
  u_xlat21 = dot(x_27, x_28);
  let x_30 : f32 = u_xlat21;
  u_xlat21 = inverseSqrt(x_30);
  let x_33 : f32 = u_xlat21;
  let x_35 : vec3<f32> = u_xlat0;
  u_xlat1 = (vec3<f32>(x_33, x_33, x_33) * x_35);
  let x_51 : vec4<f32> = vs_TEXCOORD0;
  let x_53 : vec4<f32> = textureSample(x_Noise, sampler_Noise, vec2<f32>(x_51.x, x_51.y));
  u_xlat22 = x_53.x;
  let x_64 : vec4<f32> = vs_TEXCOORD0;
  let x_66 : vec4<f32> = textureSample(x_MetallicSmooth, sampler_MetallicSmooth, vec2<f32>(x_64.z, x_64.w));
  let x_67 : vec2<f32> = vec2<f32>(x_66.x, x_66.w);
  let x_68 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_67.x, x_67.y, x_68.z, x_68.w);
  let x_70 : f32 = u_xlat22;
  u_xlat22 = (-(x_70) + 1.0f);
  let x_74 : f32 = u_xlat22;
  let x_78 : f32 = x_18.x_Cutoff;
  u_xlat22 = (x_74 + -(x_78));
  let x_85 : f32 = x_18.x_EdgeSize;
  u_xlat16.x = (1.0f / -(x_85));
  let x_89 : f32 = u_xlat22;
  let x_91 : f32 = u_xlat16.x;
  u_xlat22 = (x_89 * x_91);
  let x_93 : f32 = u_xlat22;
  u_xlat22 = clamp(x_93, 0.0f, 1.0f);
  let x_96 : f32 = u_xlat22;
  u_xlat16.x = ((x_96 * -2.0f) + 3.0f);
  let x_102 : f32 = u_xlat22;
  let x_103 : f32 = u_xlat22;
  u_xlat22 = (x_102 * x_103);
  let x_111 : vec4<f32> = vs_TEXCOORD0;
  let x_113 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_111.z, x_111.w));
  u_xlat3 = vec3<f32>(x_113.x, x_113.y, x_113.z);
  let x_116 : vec3<f32> = u_xlat3;
  let x_120 : vec4<f32> = x_18.x_Color;
  u_xlat4 = (x_116 * vec3<f32>(x_120.x, x_120.y, x_120.z));
  let x_129 : vec4<f32> = vs_TEXCOORD0;
  let x_131 : vec4<f32> = textureSample(x_Normal, sampler_Normal, vec2<f32>(x_129.z, x_129.w));
  u_xlat5 = vec3<f32>(x_131.x, x_131.y, x_131.w);
  let x_135 : f32 = u_xlat5.z;
  let x_137 : f32 = u_xlat5.x;
  u_xlat5.x = (x_135 * x_137);
  let x_140 : vec3<f32> = u_xlat5;
  let x_147 : vec2<f32> = ((vec2<f32>(x_140.x, x_140.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_148 : vec3<f32> = u_xlat5;
  u_xlat5 = vec3<f32>(x_147.x, x_147.y, x_148.z);
  let x_151 : vec3<f32> = u_xlat5;
  let x_153 : vec3<f32> = u_xlat5;
  u_xlat23 = dot(vec2<f32>(x_151.x, x_151.y), vec2<f32>(x_153.x, x_153.y));
  let x_156 : f32 = u_xlat23;
  u_xlat23 = min(x_156, 1.0f);
  let x_158 : f32 = u_xlat23;
  u_xlat23 = (-(x_158) + 1.0f);
  let x_161 : f32 = u_xlat23;
  u_xlat5.z = sqrt(x_161);
  let x_165 : f32 = u_xlat2.x;
  let x_168 : f32 = x_18.x_Metallic;
  u_xlat2.x = (x_165 * x_168);
  let x_172 : f32 = u_xlat16.x;
  let x_174 : f32 = u_xlat22;
  let x_177 : f32 = x_18.x_Cutoff;
  u_xlat22 = ((-(x_172) * x_174) + -(x_177));
  let x_180 : f32 = u_xlat22;
  u_xlat22 = (x_180 + 1.0f);
  let x_185 : f32 = u_xlat22;
  u_xlatb22 = (x_185 < 0.0f);
  let x_187 : bool = u_xlatb22;
  if (((select(0i, 1i, x_187) * -1i) != 0i)) {
    discard;
  }
  let x_196 : vec3<f32> = vs_TEXCOORD4;
  let x_200 : vec4<f32> = x_18.unity_WorldToLight[1i];
  u_xlat16 = (vec2<f32>(x_196.y, x_196.y) * vec2<f32>(x_200.x, x_200.y));
  let x_204 : vec4<f32> = x_18.unity_WorldToLight[0i];
  let x_206 : vec3<f32> = vs_TEXCOORD4;
  let x_209 : vec2<f32> = u_xlat16;
  u_xlat16 = ((vec2<f32>(x_204.x, x_204.y) * vec2<f32>(x_206.x, x_206.x)) + x_209);
  let x_213 : vec4<f32> = x_18.unity_WorldToLight[2i];
  let x_215 : vec3<f32> = vs_TEXCOORD4;
  let x_218 : vec2<f32> = u_xlat16;
  u_xlat16 = ((vec2<f32>(x_213.x, x_213.y) * vec2<f32>(x_215.z, x_215.z)) + x_218);
  let x_220 : vec2<f32> = u_xlat16;
  let x_223 : vec4<f32> = x_18.unity_WorldToLight[3i];
  u_xlat16 = (x_220 + vec2<f32>(x_223.x, x_223.y));
  let x_229 : f32 = x_18.unity_MatrixV[0i].z;
  u_xlat6.x = x_229;
  let x_232 : f32 = x_18.unity_MatrixV[1i].z;
  u_xlat6.y = x_232;
  let x_236 : f32 = x_18.unity_MatrixV[2i].z;
  u_xlat6.z = x_236;
  let x_238 : vec3<f32> = u_xlat0;
  let x_239 : vec4<f32> = u_xlat6;
  u_xlat22 = dot(x_238, vec3<f32>(x_239.x, x_239.y, x_239.z));
  let x_242 : vec3<f32> = vs_TEXCOORD4;
  let x_245 : vec4<f32> = x_18.unity_ShadowFadeCenterAndType;
  let x_248 : vec3<f32> = (x_242 + -(vec3<f32>(x_245.x, x_245.y, x_245.z)));
  let x_249 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_248.x, x_248.y, x_248.z, x_249.w);
  let x_252 : vec4<f32> = u_xlat6;
  let x_254 : vec4<f32> = u_xlat6;
  u_xlat24 = dot(vec3<f32>(x_252.x, x_252.y, x_252.z), vec3<f32>(x_254.x, x_254.y, x_254.z));
  let x_257 : f32 = u_xlat24;
  u_xlat24 = sqrt(x_257);
  let x_259 : f32 = u_xlat22;
  let x_261 : f32 = u_xlat24;
  u_xlat24 = (-(x_259) + x_261);
  let x_265 : f32 = x_18.unity_ShadowFadeCenterAndType.w;
  let x_266 : f32 = u_xlat24;
  let x_268 : f32 = u_xlat22;
  u_xlat22 = ((x_265 * x_266) + x_268);
  let x_270 : f32 = u_xlat22;
  let x_272 : f32 = x_18.x_LightShadowData.z;
  let x_275 : f32 = x_18.x_LightShadowData.w;
  u_xlat22 = ((x_270 * x_272) + x_275);
  let x_277 : f32 = u_xlat22;
  u_xlat22 = clamp(x_277, 0.0f, 1.0f);
  let x_282 : f32 = x_18.unity_ProbeVolumeParams.x;
  u_xlatb24 = (x_282 == 1.0f);
  let x_284 : bool = u_xlatb24;
  if (x_284) {
    let x_288 : f32 = x_18.unity_ProbeVolumeParams.y;
    u_xlatb24 = (x_288 == 1.0f);
    let x_290 : vec3<f32> = vs_TEXCOORD4;
    let x_294 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[1i];
    let x_296 : vec3<f32> = (vec3<f32>(x_290.y, x_290.y, x_290.y) * vec3<f32>(x_294.x, x_294.y, x_294.z));
    let x_297 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_296.x, x_296.y, x_296.z, x_297.w);
    let x_300 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[0i];
    let x_302 : vec3<f32> = vs_TEXCOORD4;
    let x_305 : vec4<f32> = u_xlat6;
    let x_307 : vec3<f32> = ((vec3<f32>(x_300.x, x_300.y, x_300.z) * vec3<f32>(x_302.x, x_302.x, x_302.x)) + vec3<f32>(x_305.x, x_305.y, x_305.z));
    let x_308 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_307.x, x_307.y, x_307.z, x_308.w);
    let x_311 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[2i];
    let x_313 : vec3<f32> = vs_TEXCOORD4;
    let x_316 : vec4<f32> = u_xlat6;
    let x_318 : vec3<f32> = ((vec3<f32>(x_311.x, x_311.y, x_311.z) * vec3<f32>(x_313.z, x_313.z, x_313.z)) + vec3<f32>(x_316.x, x_316.y, x_316.z));
    let x_319 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_318.x, x_318.y, x_318.z, x_319.w);
    let x_321 : vec4<f32> = u_xlat6;
    let x_324 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[3i];
    let x_326 : vec3<f32> = (vec3<f32>(x_321.x, x_321.y, x_321.z) + vec3<f32>(x_324.x, x_324.y, x_324.z));
    let x_327 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_326.x, x_326.y, x_326.z, x_327.w);
    let x_329 : bool = u_xlatb24;
    if (x_329) {
      let x_334 : vec4<f32> = u_xlat6;
      x_331 = vec3<f32>(x_334.x, x_334.y, x_334.z);
    } else {
      let x_337 : vec3<f32> = vs_TEXCOORD4;
      x_331 = x_337;
    }
    let x_338 : vec3<f32> = x_331;
    let x_339 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_338.x, x_338.y, x_338.z, x_339.w);
    let x_341 : vec4<f32> = u_xlat6;
    let x_345 : vec3<f32> = x_18.unity_ProbeVolumeMin;
    let x_347 : vec3<f32> = (vec3<f32>(x_341.x, x_341.y, x_341.z) + -(x_345));
    let x_348 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_347.x, x_347.y, x_347.z, x_348.w);
    let x_350 : vec4<f32> = u_xlat6;
    let x_354 : vec3<f32> = x_18.unity_ProbeVolumeSizeInv;
    let x_355 : vec3<f32> = (vec3<f32>(x_350.x, x_350.y, x_350.z) * x_354);
    let x_356 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_356.x, x_355.x, x_355.y, x_355.z);
    let x_359 : f32 = u_xlat6.y;
    u_xlat24 = ((x_359 * 0.25f) + 0.75f);
    let x_366 : f32 = x_18.unity_ProbeVolumeParams.z;
    u_xlat25 = ((x_366 * 0.5f) + 0.75f);
    let x_370 : f32 = u_xlat24;
    let x_371 : f32 = u_xlat25;
    u_xlat6.x = max(x_370, x_371);
    let x_382 : vec4<f32> = u_xlat6;
    let x_384 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_382.x, x_382.z, x_382.w));
    u_xlat6 = x_384;
  } else {
    u_xlat6.x = 1.0f;
    u_xlat6.y = 1.0f;
    u_xlat6.z = 1.0f;
    u_xlat6.w = 1.0f;
  }
  let x_390 : vec4<f32> = u_xlat6;
  let x_392 : vec4<f32> = x_18.unity_OcclusionMaskSelector;
  u_xlat24 = dot(x_390, x_392);
  let x_394 : f32 = u_xlat24;
  u_xlat24 = clamp(x_394, 0.0f, 1.0f);
  let x_397 : vec4<f32> = vs_TEXCOORD6;
  let x_399 : vec4<f32> = vs_TEXCOORD6;
  let x_401 : vec2<f32> = (vec2<f32>(x_397.x, x_397.y) / vec2<f32>(x_399.w, x_399.w));
  let x_402 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_401.x, x_401.y, x_402.z, x_402.w);
  let x_409 : vec4<f32> = u_xlat6;
  let x_411 : vec4<f32> = textureSample(x_ShadowMapTexture, sampler_ShadowMapTexture, vec2<f32>(x_409.x, x_409.y));
  u_xlat25 = x_411.x;
  let x_413 : f32 = u_xlat24;
  let x_414 : f32 = u_xlat25;
  u_xlat24 = (x_413 + -(x_414));
  let x_417 : f32 = u_xlat22;
  let x_418 : f32 = u_xlat24;
  let x_420 : f32 = u_xlat25;
  u_xlat22 = ((x_417 * x_418) + x_420);
  let x_427 : vec2<f32> = u_xlat16;
  let x_428 : vec4<f32> = textureSample(x_LightTexture0, sampler_LightTexture0, x_427);
  u_xlat16.x = x_428.w;
  let x_431 : f32 = u_xlat22;
  let x_433 : f32 = u_xlat16.x;
  u_xlat22 = (x_431 * x_433);
  let x_436 : vec3<f32> = vs_TEXCOORD1;
  let x_437 : vec3<f32> = u_xlat5;
  u_xlat6.x = dot(x_436, x_437);
  let x_441 : vec3<f32> = vs_TEXCOORD2;
  let x_442 : vec3<f32> = u_xlat5;
  u_xlat6.y = dot(x_441, x_442);
  let x_446 : vec3<f32> = vs_TEXCOORD3;
  let x_447 : vec3<f32> = u_xlat5;
  u_xlat6.z = dot(x_446, x_447);
  let x_450 : vec4<f32> = u_xlat6;
  let x_452 : vec4<f32> = u_xlat6;
  u_xlat16.x = dot(vec3<f32>(x_450.x, x_450.y, x_450.z), vec3<f32>(x_452.x, x_452.y, x_452.z));
  let x_457 : f32 = u_xlat16.x;
  u_xlat16.x = inverseSqrt(x_457);
  let x_460 : vec2<f32> = u_xlat16;
  let x_462 : vec4<f32> = u_xlat6;
  u_xlat5 = (vec3<f32>(x_460.x, x_460.x, x_460.x) * vec3<f32>(x_462.x, x_462.y, x_462.z));
  let x_465 : f32 = u_xlat22;
  let x_469 : vec4<f32> = x_18.x_LightColor0;
  let x_471 : vec3<f32> = (vec3<f32>(x_465, x_465, x_465) * vec3<f32>(x_469.x, x_469.y, x_469.z));
  let x_472 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_471.x, x_471.y, x_471.z, x_472.w);
  let x_474 : vec3<f32> = u_xlat3;
  let x_476 : vec4<f32> = x_18.x_Color;
  u_xlat3 = ((x_474 * vec3<f32>(x_476.x, x_476.y, x_476.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_482 : vec4<f32> = u_xlat2;
  let x_484 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_482.x, x_482.x, x_482.x) * x_484) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_490 : f32 = u_xlat2.x;
  u_xlat22 = ((-(x_490) * 0.959999979f) + 0.959999979f);
  let x_495 : f32 = u_xlat22;
  let x_497 : vec3<f32> = u_xlat4;
  let x_498 : vec3<f32> = (vec3<f32>(x_495, x_495, x_495) * x_497);
  let x_499 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_498.x, x_499.y, x_498.y, x_498.z);
  let x_502 : f32 = u_xlat2.y;
  let x_506 : f32 = x_18.x_Glossiness;
  u_xlat22 = ((-(x_502) * x_506) + 1.0f);
  let x_509 : vec3<f32> = u_xlat0;
  let x_510 : f32 = u_xlat21;
  let x_514 : vec4<f32> = x_18.x_WorldSpaceLightPos0;
  u_xlat0 = ((x_509 * vec3<f32>(x_510, x_510, x_510)) + vec3<f32>(x_514.x, x_514.y, x_514.z));
  let x_517 : vec3<f32> = u_xlat0;
  let x_518 : vec3<f32> = u_xlat0;
  u_xlat21 = dot(x_517, x_518);
  let x_520 : f32 = u_xlat21;
  u_xlat21 = max(x_520, 0.001f);
  let x_523 : f32 = u_xlat21;
  u_xlat21 = inverseSqrt(x_523);
  let x_525 : f32 = u_xlat21;
  let x_527 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_525, x_525, x_525) * x_527);
  let x_529 : vec3<f32> = u_xlat5;
  let x_530 : vec3<f32> = u_xlat1;
  u_xlat21 = dot(x_529, x_530);
  let x_532 : vec3<f32> = u_xlat5;
  let x_534 : vec4<f32> = x_18.x_WorldSpaceLightPos0;
  u_xlat1.x = dot(x_532, vec3<f32>(x_534.x, x_534.y, x_534.z));
  let x_539 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_539, 0.0f, 1.0f);
  let x_543 : vec3<f32> = u_xlat5;
  let x_544 : vec3<f32> = u_xlat0;
  u_xlat8 = dot(x_543, x_544);
  let x_546 : f32 = u_xlat8;
  u_xlat8 = clamp(x_546, 0.0f, 1.0f);
  let x_549 : vec4<f32> = x_18.x_WorldSpaceLightPos0;
  let x_551 : vec3<f32> = u_xlat0;
  u_xlat0.x = dot(vec3<f32>(x_549.x, x_549.y, x_549.z), x_551);
  let x_555 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_555, 0.0f, 1.0f);
  let x_560 : f32 = u_xlat0.x;
  let x_562 : f32 = u_xlat0.x;
  u_xlat7.x = (x_560 * x_562);
  let x_565 : vec3<f32> = u_xlat7;
  let x_567 : f32 = u_xlat22;
  u_xlat7.x = dot(vec2<f32>(x_565.x, x_565.x), vec2<f32>(x_567, x_567));
  let x_572 : f32 = u_xlat7.x;
  u_xlat7.x = (x_572 + -0.5f);
  let x_578 : f32 = u_xlat1.x;
  u_xlat14 = (-(x_578) + 1.0f);
  let x_582 : f32 = u_xlat14;
  let x_583 : f32 = u_xlat14;
  u_xlat15 = (x_582 * x_583);
  let x_585 : f32 = u_xlat15;
  let x_586 : f32 = u_xlat15;
  u_xlat15 = (x_585 * x_586);
  let x_588 : f32 = u_xlat14;
  let x_589 : f32 = u_xlat15;
  u_xlat14 = (x_588 * x_589);
  let x_592 : f32 = u_xlat7.x;
  let x_593 : f32 = u_xlat14;
  u_xlat14 = ((x_592 * x_593) + 1.0f);
  let x_596 : f32 = u_xlat21;
  u_xlat15 = (-(abs(x_596)) + 1.0f);
  let x_601 : f32 = u_xlat15;
  let x_602 : f32 = u_xlat15;
  u_xlat9 = (x_601 * x_602);
  let x_604 : f32 = u_xlat9;
  let x_605 : f32 = u_xlat9;
  u_xlat9 = (x_604 * x_605);
  let x_607 : f32 = u_xlat15;
  let x_608 : f32 = u_xlat9;
  u_xlat15 = (x_607 * x_608);
  let x_611 : f32 = u_xlat7.x;
  let x_612 : f32 = u_xlat15;
  u_xlat7.x = ((x_611 * x_612) + 1.0f);
  let x_617 : f32 = u_xlat7.x;
  let x_618 : f32 = u_xlat14;
  u_xlat7.x = (x_617 * x_618);
  let x_621 : f32 = u_xlat22;
  let x_622 : f32 = u_xlat22;
  u_xlat14 = (x_621 * x_622);
  let x_624 : f32 = u_xlat14;
  u_xlat14 = max(x_624, 0.002f);
  let x_627 : f32 = u_xlat14;
  u_xlat15 = (-(x_627) + 1.0f);
  let x_630 : f32 = u_xlat21;
  let x_632 : f32 = u_xlat15;
  let x_634 : f32 = u_xlat14;
  u_xlat22 = ((abs(x_630) * x_632) + x_634);
  let x_637 : f32 = u_xlat1.x;
  let x_638 : f32 = u_xlat15;
  let x_640 : f32 = u_xlat14;
  u_xlat15 = ((x_637 * x_638) + x_640);
  let x_642 : f32 = u_xlat21;
  let x_644 : f32 = u_xlat15;
  u_xlat21 = (abs(x_642) * x_644);
  let x_647 : f32 = u_xlat1.x;
  let x_648 : f32 = u_xlat22;
  let x_650 : f32 = u_xlat21;
  u_xlat21 = ((x_647 * x_648) + x_650);
  let x_652 : f32 = u_xlat21;
  u_xlat21 = (x_652 + 0.00001f);
  let x_655 : f32 = u_xlat21;
  u_xlat21 = (0.5f / x_655);
  let x_657 : f32 = u_xlat14;
  let x_658 : f32 = u_xlat14;
  u_xlat14 = (x_657 * x_658);
  let x_660 : f32 = u_xlat8;
  let x_661 : f32 = u_xlat14;
  let x_663 : f32 = u_xlat8;
  u_xlat15 = ((x_660 * x_661) + -(x_663));
  let x_666 : f32 = u_xlat15;
  let x_667 : f32 = u_xlat8;
  u_xlat8 = ((x_666 * x_667) + 1.0f);
  let x_670 : f32 = u_xlat14;
  u_xlat14 = (x_670 * 0.318309873f);
  let x_673 : f32 = u_xlat8;
  let x_674 : f32 = u_xlat8;
  u_xlat8 = ((x_673 * x_674) + 0.0000001f);
  let x_678 : f32 = u_xlat14;
  let x_679 : f32 = u_xlat8;
  u_xlat14 = (x_678 / x_679);
  let x_681 : f32 = u_xlat14;
  let x_682 : f32 = u_xlat21;
  u_xlat7.y = (x_681 * x_682);
  let x_685 : vec3<f32> = u_xlat1;
  let x_687 : vec3<f32> = u_xlat7;
  let x_689 : vec2<f32> = (vec2<f32>(x_685.x, x_685.x) * vec2<f32>(x_687.x, x_687.y));
  let x_690 : vec3<f32> = u_xlat7;
  u_xlat7 = vec3<f32>(x_689.x, x_689.y, x_690.z);
  let x_693 : f32 = u_xlat7.y;
  u_xlat14 = (x_693 * 3.141592741f);
  let x_696 : f32 = u_xlat14;
  u_xlat14 = max(x_696, 0.0f);
  let x_698 : vec3<f32> = u_xlat3;
  let x_699 : vec3<f32> = u_xlat3;
  u_xlat21 = dot(x_698, x_699);
  let x_702 : f32 = u_xlat21;
  u_xlatb21 = !((x_702 == 0.0f));
  let x_704 : bool = u_xlatb21;
  u_xlat21 = select(0.0f, 1.0f, x_704);
  let x_706 : f32 = u_xlat21;
  let x_707 : f32 = u_xlat14;
  u_xlat14 = (x_706 * x_707);
  let x_709 : vec3<f32> = u_xlat7;
  let x_711 : vec4<f32> = u_xlat6;
  u_xlat1 = (vec3<f32>(x_709.x, x_709.x, x_709.x) * vec3<f32>(x_711.x, x_711.y, x_711.z));
  let x_714 : vec4<f32> = u_xlat6;
  let x_716 : f32 = u_xlat14;
  u_xlat7 = (vec3<f32>(x_714.x, x_714.y, x_714.z) * vec3<f32>(x_716, x_716, x_716));
  let x_720 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_720) + 1.0f);
  let x_725 : f32 = u_xlat0.x;
  let x_727 : f32 = u_xlat0.x;
  u_xlat22 = (x_725 * x_727);
  let x_729 : f32 = u_xlat22;
  let x_730 : f32 = u_xlat22;
  u_xlat22 = (x_729 * x_730);
  let x_733 : f32 = u_xlat0.x;
  let x_734 : f32 = u_xlat22;
  u_xlat0.x = (x_733 * x_734);
  let x_737 : vec3<f32> = u_xlat3;
  u_xlat4 = (-(x_737) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_741 : vec3<f32> = u_xlat4;
  let x_742 : vec3<f32> = u_xlat0;
  let x_745 : vec3<f32> = u_xlat3;
  u_xlat3 = ((x_741 * vec3<f32>(x_742.x, x_742.x, x_742.x)) + x_745);
  let x_747 : vec3<f32> = u_xlat7;
  let x_748 : vec3<f32> = u_xlat3;
  u_xlat0 = (x_747 * x_748);
  let x_752 : vec4<f32> = u_xlat2;
  let x_754 : vec3<f32> = u_xlat1;
  let x_756 : vec3<f32> = u_xlat0;
  let x_757 : vec3<f32> = ((vec3<f32>(x_752.x, x_752.z, x_752.w) * x_754) + x_756);
  let x_758 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_757.x, x_757.y, x_757.z, x_758.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(4) vs_TEXCOORD4_param : vec3<f32>, @location(0) vs_TEXCOORD0_param : vec4<f32>, @location(5) vs_TEXCOORD6_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(3) vs_TEXCOORD3_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

