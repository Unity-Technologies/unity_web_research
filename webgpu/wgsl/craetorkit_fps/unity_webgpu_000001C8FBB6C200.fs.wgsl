struct PGlobals {
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding : u32,
  x_LightPositionRange : vec4<f32>,
  x_LightProjectionParams : vec4<f32>,
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
  x_Color : vec4<f32>,
  x_BumpScale : f32,
  x_Metallic : f32,
  x_Glossiness : f32,
  @size(4)
  padding_3 : u32,
  unity_WorldToLight : mat4x4<f32>,
}

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(7) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_33 : PGlobals;

@group(0) @binding(1) var x_BumpMap : texture_2d<f32>;

@group(0) @binding(8) var sampler_BumpMap : sampler;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> vs_TEXCOORD5 : vec3<f32>;

@group(0) @binding(3) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(5) var samplerunity_ProbeVolumeSH : sampler;

@group(0) @binding(4) var x_ShadowMapTexture : texture_depth_cube;

@group(0) @binding(6) var sampler_ShadowMapTexture : sampler_comparison;

@group(0) @binding(2) var x_LightTexture0 : texture_2d<f32>;

@group(0) @binding(9) var sampler_LightTexture0 : sampler;

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
  var u_xlat5 : vec4<f32>;
  var u_xlat6 : vec3<f32>;
  var u_xlat22 : f32;
  var u_xlatb22 : bool;
  var x_341 : vec3<f32>;
  var u_xlat23 : f32;
  var txVec0 : vec4<f32>;
  var u_xlat24 : f32;
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
  let x_225 : vec3<f32> = vs_TEXCOORD5;
  let x_229 : vec3<f32> = x_33.x_WorldSpaceCameraPos;
  let x_230 : vec3<f32> = (-(x_225) + x_229);
  let x_231 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_230.x, x_230.y, x_230.z, x_231.w);
  let x_236 : f32 = x_33.unity_MatrixV[0i].z;
  u_xlat6.x = x_236;
  let x_239 : f32 = x_33.unity_MatrixV[1i].z;
  u_xlat6.y = x_239;
  let x_243 : f32 = x_33.unity_MatrixV[2i].z;
  u_xlat6.z = x_243;
  let x_245 : vec4<f32> = u_xlat5;
  let x_247 : vec3<f32> = u_xlat6;
  u_xlat21 = dot(vec3<f32>(x_245.x, x_245.y, x_245.z), x_247);
  let x_249 : vec3<f32> = vs_TEXCOORD5;
  let x_252 : vec4<f32> = x_33.unity_ShadowFadeCenterAndType;
  let x_255 : vec3<f32> = (x_249 + -(vec3<f32>(x_252.x, x_252.y, x_252.z)));
  let x_256 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_255.x, x_255.y, x_255.z, x_256.w);
  let x_259 : vec4<f32> = u_xlat5;
  let x_261 : vec4<f32> = u_xlat5;
  u_xlat22 = dot(vec3<f32>(x_259.x, x_259.y, x_259.z), vec3<f32>(x_261.x, x_261.y, x_261.z));
  let x_264 : f32 = u_xlat22;
  u_xlat22 = sqrt(x_264);
  let x_266 : f32 = u_xlat21;
  let x_268 : f32 = u_xlat22;
  u_xlat22 = (-(x_266) + x_268);
  let x_272 : f32 = x_33.unity_ShadowFadeCenterAndType.w;
  let x_273 : f32 = u_xlat22;
  let x_275 : f32 = u_xlat21;
  u_xlat21 = ((x_272 * x_273) + x_275);
  let x_277 : f32 = u_xlat21;
  let x_280 : f32 = x_33.x_LightShadowData.z;
  let x_283 : f32 = x_33.x_LightShadowData.w;
  u_xlat21 = ((x_277 * x_280) + x_283);
  let x_285 : f32 = u_xlat21;
  u_xlat21 = clamp(x_285, 0.0f, 1.0f);
  let x_293 : f32 = x_33.unity_ProbeVolumeParams.x;
  u_xlatb22 = (x_293 == 1.0f);
  let x_295 : bool = u_xlatb22;
  if (x_295) {
    let x_299 : f32 = x_33.unity_ProbeVolumeParams.y;
    u_xlatb22 = (x_299 == 1.0f);
    let x_301 : vec3<f32> = vs_TEXCOORD5;
    let x_305 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[1i];
    let x_307 : vec3<f32> = (vec3<f32>(x_301.y, x_301.y, x_301.y) * vec3<f32>(x_305.x, x_305.y, x_305.z));
    let x_308 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_307.x, x_307.y, x_307.z, x_308.w);
    let x_311 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[0i];
    let x_313 : vec3<f32> = vs_TEXCOORD5;
    let x_316 : vec4<f32> = u_xlat5;
    let x_318 : vec3<f32> = ((vec3<f32>(x_311.x, x_311.y, x_311.z) * vec3<f32>(x_313.x, x_313.x, x_313.x)) + vec3<f32>(x_316.x, x_316.y, x_316.z));
    let x_319 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_318.x, x_318.y, x_318.z, x_319.w);
    let x_322 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[2i];
    let x_324 : vec3<f32> = vs_TEXCOORD5;
    let x_327 : vec4<f32> = u_xlat5;
    let x_329 : vec3<f32> = ((vec3<f32>(x_322.x, x_322.y, x_322.z) * vec3<f32>(x_324.z, x_324.z, x_324.z)) + vec3<f32>(x_327.x, x_327.y, x_327.z));
    let x_330 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_329.x, x_329.y, x_329.z, x_330.w);
    let x_332 : vec4<f32> = u_xlat5;
    let x_335 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[3i];
    let x_337 : vec3<f32> = (vec3<f32>(x_332.x, x_332.y, x_332.z) + vec3<f32>(x_335.x, x_335.y, x_335.z));
    let x_338 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_337.x, x_337.y, x_337.z, x_338.w);
    let x_340 : bool = u_xlatb22;
    if (x_340) {
      let x_344 : vec4<f32> = u_xlat5;
      x_341 = vec3<f32>(x_344.x, x_344.y, x_344.z);
    } else {
      let x_347 : vec3<f32> = vs_TEXCOORD5;
      x_341 = x_347;
    }
    let x_348 : vec3<f32> = x_341;
    let x_349 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_348.x, x_348.y, x_348.z, x_349.w);
    let x_351 : vec4<f32> = u_xlat5;
    let x_355 : vec3<f32> = x_33.unity_ProbeVolumeMin;
    let x_357 : vec3<f32> = (vec3<f32>(x_351.x, x_351.y, x_351.z) + -(x_355));
    let x_358 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_357.x, x_357.y, x_357.z, x_358.w);
    let x_360 : vec4<f32> = u_xlat5;
    let x_364 : vec3<f32> = x_33.unity_ProbeVolumeSizeInv;
    let x_365 : vec3<f32> = (vec3<f32>(x_360.x, x_360.y, x_360.z) * x_364);
    let x_366 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_366.x, x_365.x, x_365.y, x_365.z);
    let x_369 : f32 = u_xlat5.y;
    u_xlat22 = ((x_369 * 0.25f) + 0.75f);
    let x_376 : f32 = x_33.unity_ProbeVolumeParams.z;
    u_xlat23 = ((x_376 * 0.5f) + 0.75f);
    let x_380 : f32 = u_xlat22;
    let x_381 : f32 = u_xlat23;
    u_xlat5.x = max(x_380, x_381);
    let x_392 : vec4<f32> = u_xlat5;
    let x_394 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_392.x, x_392.z, x_392.w));
    u_xlat5 = x_394;
  } else {
    u_xlat5.x = 1.0f;
    u_xlat5.y = 1.0f;
    u_xlat5.z = 1.0f;
    u_xlat5.w = 1.0f;
  }
  let x_400 : vec4<f32> = u_xlat5;
  let x_402 : vec4<f32> = x_33.unity_OcclusionMaskSelector;
  u_xlat22 = dot(x_400, x_402);
  let x_404 : f32 = u_xlat22;
  u_xlat22 = clamp(x_404, 0.0f, 1.0f);
  let x_406 : vec3<f32> = vs_TEXCOORD5;
  let x_408 : vec4<f32> = x_33.x_LightPositionRange;
  let x_411 : vec3<f32> = (x_406 + -(vec3<f32>(x_408.x, x_408.y, x_408.z)));
  let x_412 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_411.x, x_411.y, x_411.z, x_412.w);
  let x_415 : f32 = u_xlat5.y;
  let x_418 : f32 = u_xlat5.x;
  u_xlat23 = max(abs(x_415), abs(x_418));
  let x_422 : f32 = u_xlat5.z;
  let x_424 : f32 = u_xlat23;
  u_xlat23 = max(abs(x_422), x_424);
  let x_426 : f32 = u_xlat23;
  let x_428 : f32 = x_33.x_LightProjectionParams.z;
  u_xlat23 = (x_426 + -(x_428));
  let x_431 : f32 = u_xlat23;
  u_xlat23 = max(x_431, 0.00001f);
  let x_434 : f32 = u_xlat23;
  let x_436 : f32 = x_33.x_LightProjectionParams.w;
  u_xlat23 = (x_434 * x_436);
  let x_439 : f32 = x_33.x_LightProjectionParams.y;
  let x_440 : f32 = u_xlat23;
  u_xlat23 = (x_439 / x_440);
  let x_442 : f32 = u_xlat23;
  let x_444 : f32 = x_33.x_LightProjectionParams.x;
  u_xlat23 = (x_442 + -(x_444));
  let x_447 : f32 = u_xlat23;
  u_xlat23 = (-(x_447) + 1.0f);
  let x_451 : vec4<f32> = u_xlat5;
  let x_452 : vec3<f32> = vec3<f32>(x_451.x, x_451.y, x_451.z);
  let x_453 : f32 = u_xlat23;
  txVec0 = vec4<f32>(x_452.x, x_452.y, x_452.z, x_453);
  let x_466 : vec4<f32> = txVec0;
  let x_468 : f32 = textureSampleCompare(x_ShadowMapTexture, sampler_ShadowMapTexture, x_466.xyz, x_466.w);
  u_xlat23 = x_468;
  let x_471 : f32 = x_33.x_LightShadowData.x;
  u_xlat24 = (-(x_471) + 1.0f);
  let x_474 : f32 = u_xlat23;
  let x_475 : f32 = u_xlat24;
  let x_478 : f32 = x_33.x_LightShadowData.x;
  u_xlat23 = ((x_474 * x_475) + x_478);
  let x_480 : f32 = u_xlat22;
  let x_481 : f32 = u_xlat23;
  u_xlat22 = (x_480 + -(x_481));
  let x_484 : f32 = u_xlat21;
  let x_485 : f32 = u_xlat22;
  let x_487 : f32 = u_xlat23;
  u_xlat21 = ((x_484 * x_485) + x_487);
  let x_489 : vec3<f32> = u_xlat4;
  let x_490 : vec3<f32> = u_xlat4;
  u_xlat22 = dot(x_489, x_490);
  let x_497 : f32 = u_xlat22;
  let x_499 : vec4<f32> = textureSample(x_LightTexture0, sampler_LightTexture0, vec2<f32>(x_497, x_497));
  u_xlat22 = x_499.x;
  let x_501 : f32 = u_xlat21;
  let x_502 : f32 = u_xlat22;
  u_xlat21 = (x_501 * x_502);
  let x_506 : f32 = vs_TEXCOORD2.w;
  u_xlat4.x = x_506;
  let x_509 : f32 = vs_TEXCOORD3.w;
  u_xlat4.y = x_509;
  let x_512 : f32 = vs_TEXCOORD4.w;
  u_xlat4.z = x_512;
  let x_514 : vec3<f32> = u_xlat4;
  let x_515 : vec3<f32> = u_xlat4;
  u_xlat22 = dot(x_514, x_515);
  let x_517 : f32 = u_xlat22;
  u_xlat22 = inverseSqrt(x_517);
  let x_519 : f32 = u_xlat22;
  let x_521 : vec3<f32> = u_xlat4;
  let x_522 : vec3<f32> = (vec3<f32>(x_519, x_519, x_519) * x_521);
  let x_523 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_522.x, x_522.y, x_522.z, x_523.w);
  let x_525 : f32 = u_xlat21;
  let x_529 : vec4<f32> = x_33.x_LightColor0;
  u_xlat6 = (vec3<f32>(x_525, x_525, x_525) * vec3<f32>(x_529.x, x_529.y, x_529.z));
  let x_534 : f32 = x_33.x_Glossiness;
  u_xlat21 = (-(x_534) + 1.0f);
  let x_537 : vec3<f32> = u_xlat4;
  let x_538 : f32 = u_xlat22;
  let x_541 : vec3<f32> = u_xlat3;
  u_xlat4 = ((x_537 * vec3<f32>(x_538, x_538, x_538)) + -(x_541));
  let x_544 : vec3<f32> = u_xlat4;
  let x_545 : vec3<f32> = u_xlat4;
  u_xlat22 = dot(x_544, x_545);
  let x_547 : f32 = u_xlat22;
  u_xlat22 = max(x_547, 0.001f);
  let x_550 : f32 = u_xlat22;
  u_xlat22 = inverseSqrt(x_550);
  let x_552 : f32 = u_xlat22;
  let x_554 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_552, x_552, x_552) * x_554);
  let x_556 : vec4<f32> = u_xlat2;
  let x_558 : vec3<f32> = u_xlat3;
  u_xlat22 = dot(vec3<f32>(x_556.x, x_556.y, x_556.z), -(x_558));
  let x_561 : vec4<f32> = u_xlat2;
  let x_563 : vec4<f32> = u_xlat5;
  u_xlat23 = dot(vec3<f32>(x_561.x, x_561.y, x_561.z), vec3<f32>(x_563.x, x_563.y, x_563.z));
  let x_566 : f32 = u_xlat23;
  u_xlat23 = clamp(x_566, 0.0f, 1.0f);
  let x_568 : vec4<f32> = u_xlat2;
  let x_570 : vec3<f32> = u_xlat4;
  u_xlat2.x = dot(vec3<f32>(x_568.x, x_568.y, x_568.z), x_570);
  let x_574 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_574, 0.0f, 1.0f);
  let x_577 : vec4<f32> = u_xlat5;
  let x_579 : vec3<f32> = u_xlat4;
  u_xlat9.x = dot(vec3<f32>(x_577.x, x_577.y, x_577.z), x_579);
  let x_583 : f32 = u_xlat9.x;
  u_xlat9.x = clamp(x_583, 0.0f, 1.0f);
  let x_588 : f32 = u_xlat9.x;
  let x_590 : f32 = u_xlat9.x;
  u_xlat16 = (x_588 * x_590);
  let x_592 : f32 = u_xlat16;
  let x_594 : f32 = u_xlat21;
  u_xlat16 = dot(vec2<f32>(x_592, x_592), vec2<f32>(x_594, x_594));
  let x_597 : f32 = u_xlat16;
  u_xlat16 = (x_597 + -0.5f);
  let x_600 : f32 = u_xlat23;
  u_xlat3.x = (-(x_600) + 1.0f);
  let x_606 : f32 = u_xlat3.x;
  let x_608 : f32 = u_xlat3.x;
  u_xlat10 = (x_606 * x_608);
  let x_610 : f32 = u_xlat10;
  let x_611 : f32 = u_xlat10;
  u_xlat10 = (x_610 * x_611);
  let x_614 : f32 = u_xlat3.x;
  let x_615 : f32 = u_xlat10;
  u_xlat3.x = (x_614 * x_615);
  let x_618 : f32 = u_xlat16;
  let x_620 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_618 * x_620) + 1.0f);
  let x_624 : f32 = u_xlat22;
  u_xlat10 = (-(abs(x_624)) + 1.0f);
  let x_629 : f32 = u_xlat10;
  let x_630 : f32 = u_xlat10;
  u_xlat17 = (x_629 * x_630);
  let x_632 : f32 = u_xlat17;
  let x_633 : f32 = u_xlat17;
  u_xlat17 = (x_632 * x_633);
  let x_635 : f32 = u_xlat10;
  let x_636 : f32 = u_xlat17;
  u_xlat10 = (x_635 * x_636);
  let x_638 : f32 = u_xlat16;
  let x_639 : f32 = u_xlat10;
  u_xlat16 = ((x_638 * x_639) + 1.0f);
  let x_642 : f32 = u_xlat16;
  let x_644 : f32 = u_xlat3.x;
  u_xlat16 = (x_642 * x_644);
  let x_646 : f32 = u_xlat23;
  let x_647 : f32 = u_xlat16;
  u_xlat16 = (x_646 * x_647);
  let x_649 : f32 = u_xlat21;
  let x_650 : f32 = u_xlat21;
  u_xlat21 = (x_649 * x_650);
  let x_652 : f32 = u_xlat21;
  u_xlat21 = max(x_652, 0.002f);
  let x_655 : f32 = u_xlat21;
  u_xlat3.x = (-(x_655) + 1.0f);
  let x_659 : f32 = u_xlat22;
  let x_662 : f32 = u_xlat3.x;
  let x_664 : f32 = u_xlat21;
  u_xlat10 = ((abs(x_659) * x_662) + x_664);
  let x_666 : f32 = u_xlat23;
  let x_668 : f32 = u_xlat3.x;
  let x_670 : f32 = u_xlat21;
  u_xlat3.x = ((x_666 * x_668) + x_670);
  let x_673 : f32 = u_xlat22;
  let x_676 : f32 = u_xlat3.x;
  u_xlat22 = (abs(x_673) * x_676);
  let x_678 : f32 = u_xlat23;
  let x_679 : f32 = u_xlat10;
  let x_681 : f32 = u_xlat22;
  u_xlat22 = ((x_678 * x_679) + x_681);
  let x_683 : f32 = u_xlat22;
  u_xlat22 = (x_683 + 0.00001f);
  let x_685 : f32 = u_xlat22;
  u_xlat22 = (0.5f / x_685);
  let x_687 : f32 = u_xlat21;
  let x_688 : f32 = u_xlat21;
  u_xlat21 = (x_687 * x_688);
  let x_691 : f32 = u_xlat2.x;
  let x_692 : f32 = u_xlat21;
  let x_695 : f32 = u_xlat2.x;
  u_xlat3.x = ((x_691 * x_692) + -(x_695));
  let x_700 : f32 = u_xlat3.x;
  let x_702 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_700 * x_702) + 1.0f);
  let x_706 : f32 = u_xlat21;
  u_xlat21 = (x_706 * 0.318309873f);
  let x_710 : f32 = u_xlat2.x;
  let x_712 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_710 * x_712) + 0.0000001f);
  let x_717 : f32 = u_xlat21;
  let x_719 : f32 = u_xlat2.x;
  u_xlat21 = (x_717 / x_719);
  let x_721 : f32 = u_xlat21;
  let x_722 : f32 = u_xlat22;
  u_xlat21 = (x_721 * x_722);
  let x_724 : f32 = u_xlat23;
  let x_725 : f32 = u_xlat21;
  u_xlat21 = (x_724 * x_725);
  let x_727 : f32 = u_xlat21;
  u_xlat21 = (x_727 * 3.141592741f);
  let x_730 : f32 = u_xlat21;
  u_xlat21 = max(x_730, 0.0f);
  let x_732 : vec3<f32> = u_xlat0;
  let x_733 : vec3<f32> = u_xlat0;
  u_xlat22 = dot(x_732, x_733);
  let x_735 : f32 = u_xlat22;
  u_xlatb22 = !((x_735 == 0.0f));
  let x_737 : bool = u_xlatb22;
  u_xlat22 = select(0.0f, 1.0f, x_737);
  let x_739 : f32 = u_xlat21;
  let x_740 : f32 = u_xlat22;
  u_xlat21 = (x_739 * x_740);
  let x_742 : f32 = u_xlat16;
  let x_744 : vec3<f32> = u_xlat6;
  let x_745 : vec3<f32> = (vec3<f32>(x_742, x_742, x_742) * x_744);
  let x_746 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_745.x, x_746.y, x_745.y, x_745.z);
  let x_748 : vec3<f32> = u_xlat6;
  let x_749 : f32 = u_xlat21;
  u_xlat3 = (x_748 * vec3<f32>(x_749, x_749, x_749));
  let x_753 : f32 = u_xlat9.x;
  u_xlat21 = (-(x_753) + 1.0f);
  let x_756 : f32 = u_xlat21;
  let x_757 : f32 = u_xlat21;
  u_xlat22 = (x_756 * x_757);
  let x_759 : f32 = u_xlat22;
  let x_760 : f32 = u_xlat22;
  u_xlat22 = (x_759 * x_760);
  let x_762 : f32 = u_xlat21;
  let x_763 : f32 = u_xlat22;
  u_xlat21 = (x_762 * x_763);
  let x_765 : vec3<f32> = u_xlat0;
  u_xlat4 = (-(x_765) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_769 : vec3<f32> = u_xlat4;
  let x_770 : f32 = u_xlat21;
  let x_773 : vec3<f32> = u_xlat0;
  u_xlat0 = ((x_769 * vec3<f32>(x_770, x_770, x_770)) + x_773);
  let x_775 : vec3<f32> = u_xlat0;
  let x_776 : vec3<f32> = u_xlat3;
  u_xlat0 = (x_775 * x_776);
  let x_780 : vec3<f32> = u_xlat1;
  let x_781 : vec4<f32> = u_xlat2;
  let x_784 : vec3<f32> = u_xlat0;
  let x_785 : vec3<f32> = ((x_780 * vec3<f32>(x_781.x, x_781.z, x_781.w)) + x_784);
  let x_786 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_785.x, x_785.y, x_785.z, x_786.w);
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

