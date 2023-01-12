struct PGlobals {
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding : u32,
  x_ProjectionParams : vec4<f32>,
  unity_OcclusionMaskSelector : vec4<f32>,
  x_LightShadowData : vec4<f32>,
  unity_ShadowFadeCenterAndType : vec4<f32>,
  unity_MatrixV : mat4x4<f32>,
  unity_FogParams : vec4<f32>,
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
  x_Metallic : f32,
  x_Glossiness : f32,
  @size(8)
  padding_3 : u32,
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

var<private> vs_TEXCOORD7 : vec4<f32>;

@group(0) @binding(1) var x_ShadowMapTexture : texture_2d<f32>;

@group(0) @binding(6) var sampler_ShadowMapTexture : sampler;

@group(0) @binding(2) var x_LightTexture0 : texture_2d<f32>;

@group(0) @binding(7) var sampler_LightTexture0 : sampler;

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
  var u_xlat4 : vec3<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat6 : vec3<f32>;
  var u_xlat22 : f32;
  var u_xlat23 : f32;
  var u_xlatb23 : bool;
  var x_277 : vec3<f32>;
  var u_xlat24 : f32;
  var u_xlat18 : vec2<f32>;
  var u_xlat9 : f32;
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
  let x_120 : vec2<f32> = (vec2<f32>(x_113.y, x_113.y) * vec2<f32>(x_118.x, x_118.y));
  let x_121 : vec3<f32> = u_xlat4;
  u_xlat4 = vec3<f32>(x_120.x, x_120.y, x_121.z);
  let x_125 : vec4<f32> = x_33.unity_WorldToLight[0i];
  let x_127 : vec3<f32> = vs_TEXCOORD5;
  let x_130 : vec3<f32> = u_xlat4;
  let x_132 : vec2<f32> = ((vec2<f32>(x_125.x, x_125.y) * vec2<f32>(x_127.x, x_127.x)) + vec2<f32>(x_130.x, x_130.y));
  let x_133 : vec3<f32> = u_xlat4;
  u_xlat4 = vec3<f32>(x_132.x, x_132.y, x_133.z);
  let x_137 : vec4<f32> = x_33.unity_WorldToLight[2i];
  let x_139 : vec3<f32> = vs_TEXCOORD5;
  let x_142 : vec3<f32> = u_xlat4;
  let x_144 : vec2<f32> = ((vec2<f32>(x_137.x, x_137.y) * vec2<f32>(x_139.z, x_139.z)) + vec2<f32>(x_142.x, x_142.y));
  let x_145 : vec3<f32> = u_xlat4;
  u_xlat4 = vec3<f32>(x_144.x, x_144.y, x_145.z);
  let x_147 : vec3<f32> = u_xlat4;
  let x_151 : vec4<f32> = x_33.unity_WorldToLight[3i];
  let x_153 : vec2<f32> = (vec2<f32>(x_147.x, x_147.y) + vec2<f32>(x_151.x, x_151.y));
  let x_154 : vec3<f32> = u_xlat4;
  u_xlat4 = vec3<f32>(x_153.x, x_153.y, x_154.z);
  let x_157 : vec3<f32> = vs_TEXCOORD5;
  let x_161 : vec3<f32> = x_33.x_WorldSpaceCameraPos;
  let x_162 : vec3<f32> = (-(x_157) + x_161);
  let x_163 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_162.x, x_162.y, x_162.z, x_163.w);
  let x_170 : f32 = x_33.unity_MatrixV[0i].z;
  u_xlat6.x = x_170;
  let x_174 : f32 = x_33.unity_MatrixV[1i].z;
  u_xlat6.y = x_174;
  let x_178 : f32 = x_33.unity_MatrixV[2i].z;
  u_xlat6.z = x_178;
  let x_181 : vec4<f32> = u_xlat5;
  let x_183 : vec3<f32> = u_xlat6;
  u_xlat22 = dot(vec3<f32>(x_181.x, x_181.y, x_181.z), x_183);
  let x_185 : vec3<f32> = vs_TEXCOORD5;
  let x_188 : vec4<f32> = x_33.unity_ShadowFadeCenterAndType;
  let x_191 : vec3<f32> = (x_185 + -(vec3<f32>(x_188.x, x_188.y, x_188.z)));
  let x_192 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_191.x, x_191.y, x_191.z, x_192.w);
  let x_195 : vec4<f32> = u_xlat5;
  let x_197 : vec4<f32> = u_xlat5;
  u_xlat23 = dot(vec3<f32>(x_195.x, x_195.y, x_195.z), vec3<f32>(x_197.x, x_197.y, x_197.z));
  let x_200 : f32 = u_xlat23;
  u_xlat23 = sqrt(x_200);
  let x_202 : f32 = u_xlat22;
  let x_204 : f32 = u_xlat23;
  u_xlat23 = (-(x_202) + x_204);
  let x_208 : f32 = x_33.unity_ShadowFadeCenterAndType.w;
  let x_209 : f32 = u_xlat23;
  let x_211 : f32 = u_xlat22;
  u_xlat22 = ((x_208 * x_209) + x_211);
  let x_213 : f32 = u_xlat22;
  let x_215 : f32 = x_33.x_LightShadowData.z;
  let x_218 : f32 = x_33.x_LightShadowData.w;
  u_xlat22 = ((x_213 * x_215) + x_218);
  let x_220 : f32 = u_xlat22;
  u_xlat22 = clamp(x_220, 0.0f, 1.0f);
  let x_229 : f32 = x_33.unity_ProbeVolumeParams.x;
  u_xlatb23 = (x_229 == 1.0f);
  let x_231 : bool = u_xlatb23;
  if (x_231) {
    let x_235 : f32 = x_33.unity_ProbeVolumeParams.y;
    u_xlatb23 = (x_235 == 1.0f);
    let x_237 : vec3<f32> = vs_TEXCOORD5;
    let x_241 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[1i];
    let x_243 : vec3<f32> = (vec3<f32>(x_237.y, x_237.y, x_237.y) * vec3<f32>(x_241.x, x_241.y, x_241.z));
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
    let x_276 : bool = u_xlatb23;
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
    let x_291 : vec3<f32> = x_33.unity_ProbeVolumeMin;
    let x_293 : vec3<f32> = (vec3<f32>(x_287.x, x_287.y, x_287.z) + -(x_291));
    let x_294 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_293.x, x_293.y, x_293.z, x_294.w);
    let x_296 : vec4<f32> = u_xlat5;
    let x_300 : vec3<f32> = x_33.unity_ProbeVolumeSizeInv;
    let x_301 : vec3<f32> = (vec3<f32>(x_296.x, x_296.y, x_296.z) * x_300);
    let x_302 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_302.x, x_301.x, x_301.y, x_301.z);
    let x_305 : f32 = u_xlat5.y;
    u_xlat23 = ((x_305 * 0.25f) + 0.75f);
    let x_312 : f32 = x_33.unity_ProbeVolumeParams.z;
    u_xlat24 = ((x_312 * 0.5f) + 0.75f);
    let x_316 : f32 = u_xlat23;
    let x_317 : f32 = u_xlat24;
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
  let x_336 : vec4<f32> = u_xlat5;
  let x_338 : vec4<f32> = x_33.unity_OcclusionMaskSelector;
  u_xlat23 = dot(x_336, x_338);
  let x_340 : f32 = u_xlat23;
  u_xlat23 = clamp(x_340, 0.0f, 1.0f);
  let x_345 : vec4<f32> = vs_TEXCOORD7;
  let x_347 : vec4<f32> = vs_TEXCOORD7;
  u_xlat18 = (vec2<f32>(x_345.x, x_345.y) / vec2<f32>(x_347.w, x_347.w));
  let x_355 : vec2<f32> = u_xlat18;
  let x_356 : vec4<f32> = textureSample(x_ShadowMapTexture, sampler_ShadowMapTexture, x_355);
  u_xlat24 = x_356.x;
  let x_358 : f32 = u_xlat23;
  let x_359 : f32 = u_xlat24;
  u_xlat23 = (x_358 + -(x_359));
  let x_362 : f32 = u_xlat22;
  let x_363 : f32 = u_xlat23;
  let x_365 : f32 = u_xlat24;
  u_xlat22 = ((x_362 * x_363) + x_365);
  let x_372 : vec3<f32> = u_xlat4;
  let x_374 : vec4<f32> = textureSample(x_LightTexture0, sampler_LightTexture0, vec2<f32>(x_372.x, x_372.y));
  u_xlat23 = x_374.w;
  let x_376 : f32 = u_xlat22;
  let x_377 : f32 = u_xlat23;
  u_xlat22 = (x_376 * x_377);
  let x_379 : f32 = u_xlat22;
  let x_383 : vec4<f32> = x_33.x_LightColor0;
  u_xlat4 = (vec3<f32>(x_379, x_379, x_379) * vec3<f32>(x_383.x, x_383.y, x_383.z));
  let x_388 : f32 = x_33.x_Glossiness;
  u_xlat22 = (-(x_388) + 1.0f);
  let x_394 : f32 = vs_TEXCOORD2.w;
  u_xlat5.x = x_394;
  let x_398 : f32 = vs_TEXCOORD3.w;
  u_xlat5.y = x_398;
  let x_401 : f32 = vs_TEXCOORD4.w;
  u_xlat5.z = x_401;
  let x_403 : vec4<f32> = vs_TEXCOORD1;
  let x_406 : f32 = u_xlat21;
  let x_409 : vec4<f32> = u_xlat5;
  u_xlat6 = ((-(vec3<f32>(x_403.x, x_403.y, x_403.z)) * vec3<f32>(x_406, x_406, x_406)) + vec3<f32>(x_409.x, x_409.y, x_409.z));
  let x_412 : vec3<f32> = u_xlat6;
  let x_413 : vec3<f32> = u_xlat6;
  u_xlat21 = dot(x_412, x_413);
  let x_415 : f32 = u_xlat21;
  u_xlat21 = max(x_415, 0.001f);
  let x_418 : f32 = u_xlat21;
  u_xlat21 = inverseSqrt(x_418);
  let x_420 : f32 = u_xlat21;
  let x_422 : vec3<f32> = u_xlat6;
  u_xlat6 = (vec3<f32>(x_420, x_420, x_420) * x_422);
  let x_424 : vec4<f32> = u_xlat2;
  let x_426 : vec3<f32> = u_xlat3;
  u_xlat21 = dot(vec3<f32>(x_424.x, x_424.y, x_424.z), -(x_426));
  let x_429 : vec4<f32> = u_xlat2;
  let x_431 : vec4<f32> = u_xlat5;
  u_xlat23 = dot(vec3<f32>(x_429.x, x_429.y, x_429.z), vec3<f32>(x_431.x, x_431.y, x_431.z));
  let x_434 : f32 = u_xlat23;
  u_xlat23 = clamp(x_434, 0.0f, 1.0f);
  let x_436 : vec4<f32> = u_xlat2;
  let x_438 : vec3<f32> = u_xlat6;
  u_xlat2.x = dot(vec3<f32>(x_436.x, x_436.y, x_436.z), x_438);
  let x_442 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_442, 0.0f, 1.0f);
  let x_446 : vec4<f32> = u_xlat5;
  let x_448 : vec3<f32> = u_xlat6;
  u_xlat9 = dot(vec3<f32>(x_446.x, x_446.y, x_446.z), x_448);
  let x_450 : f32 = u_xlat9;
  u_xlat9 = clamp(x_450, 0.0f, 1.0f);
  let x_453 : f32 = u_xlat9;
  let x_454 : f32 = u_xlat9;
  u_xlat16 = (x_453 * x_454);
  let x_456 : f32 = u_xlat16;
  let x_458 : f32 = u_xlat22;
  u_xlat16 = dot(vec2<f32>(x_456, x_456), vec2<f32>(x_458, x_458));
  let x_461 : f32 = u_xlat16;
  u_xlat16 = (x_461 + -0.5f);
  let x_464 : f32 = u_xlat23;
  u_xlat3.x = (-(x_464) + 1.0f);
  let x_470 : f32 = u_xlat3.x;
  let x_472 : f32 = u_xlat3.x;
  u_xlat10 = (x_470 * x_472);
  let x_474 : f32 = u_xlat10;
  let x_475 : f32 = u_xlat10;
  u_xlat10 = (x_474 * x_475);
  let x_478 : f32 = u_xlat3.x;
  let x_479 : f32 = u_xlat10;
  u_xlat3.x = (x_478 * x_479);
  let x_482 : f32 = u_xlat16;
  let x_484 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_482 * x_484) + 1.0f);
  let x_488 : f32 = u_xlat21;
  u_xlat10 = (-(abs(x_488)) + 1.0f);
  let x_493 : f32 = u_xlat10;
  let x_494 : f32 = u_xlat10;
  u_xlat17 = (x_493 * x_494);
  let x_496 : f32 = u_xlat17;
  let x_497 : f32 = u_xlat17;
  u_xlat17 = (x_496 * x_497);
  let x_499 : f32 = u_xlat10;
  let x_500 : f32 = u_xlat17;
  u_xlat10 = (x_499 * x_500);
  let x_502 : f32 = u_xlat16;
  let x_503 : f32 = u_xlat10;
  u_xlat16 = ((x_502 * x_503) + 1.0f);
  let x_506 : f32 = u_xlat16;
  let x_508 : f32 = u_xlat3.x;
  u_xlat16 = (x_506 * x_508);
  let x_510 : f32 = u_xlat23;
  let x_511 : f32 = u_xlat16;
  u_xlat16 = (x_510 * x_511);
  let x_513 : f32 = u_xlat22;
  let x_514 : f32 = u_xlat22;
  u_xlat22 = (x_513 * x_514);
  let x_516 : f32 = u_xlat22;
  u_xlat22 = max(x_516, 0.002f);
  let x_519 : f32 = u_xlat22;
  u_xlat3.x = (-(x_519) + 1.0f);
  let x_523 : f32 = u_xlat21;
  let x_526 : f32 = u_xlat3.x;
  let x_528 : f32 = u_xlat22;
  u_xlat10 = ((abs(x_523) * x_526) + x_528);
  let x_530 : f32 = u_xlat23;
  let x_532 : f32 = u_xlat3.x;
  let x_534 : f32 = u_xlat22;
  u_xlat3.x = ((x_530 * x_532) + x_534);
  let x_537 : f32 = u_xlat21;
  let x_540 : f32 = u_xlat3.x;
  u_xlat21 = (abs(x_537) * x_540);
  let x_542 : f32 = u_xlat23;
  let x_543 : f32 = u_xlat10;
  let x_545 : f32 = u_xlat21;
  u_xlat21 = ((x_542 * x_543) + x_545);
  let x_547 : f32 = u_xlat21;
  u_xlat21 = (x_547 + 0.00001f);
  let x_550 : f32 = u_xlat21;
  u_xlat21 = (0.5f / x_550);
  let x_552 : f32 = u_xlat22;
  let x_553 : f32 = u_xlat22;
  u_xlat22 = (x_552 * x_553);
  let x_556 : f32 = u_xlat2.x;
  let x_557 : f32 = u_xlat22;
  let x_560 : f32 = u_xlat2.x;
  u_xlat3.x = ((x_556 * x_557) + -(x_560));
  let x_565 : f32 = u_xlat3.x;
  let x_567 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_565 * x_567) + 1.0f);
  let x_571 : f32 = u_xlat22;
  u_xlat22 = (x_571 * 0.318309873f);
  let x_575 : f32 = u_xlat2.x;
  let x_577 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_575 * x_577) + 0.0000001f);
  let x_582 : f32 = u_xlat22;
  let x_584 : f32 = u_xlat2.x;
  u_xlat22 = (x_582 / x_584);
  let x_586 : f32 = u_xlat21;
  let x_587 : f32 = u_xlat22;
  u_xlat21 = (x_586 * x_587);
  let x_589 : f32 = u_xlat23;
  let x_590 : f32 = u_xlat21;
  u_xlat21 = (x_589 * x_590);
  let x_592 : f32 = u_xlat21;
  u_xlat21 = (x_592 * 3.141592741f);
  let x_595 : f32 = u_xlat21;
  u_xlat21 = max(x_595, 0.0f);
  let x_597 : vec3<f32> = u_xlat0;
  let x_598 : vec3<f32> = u_xlat0;
  u_xlat22 = dot(x_597, x_598);
  let x_601 : f32 = u_xlat22;
  u_xlatb22 = !((x_601 == 0.0f));
  let x_603 : bool = u_xlatb22;
  u_xlat22 = select(0.0f, 1.0f, x_603);
  let x_605 : f32 = u_xlat21;
  let x_606 : f32 = u_xlat22;
  u_xlat21 = (x_605 * x_606);
  let x_608 : f32 = u_xlat16;
  let x_610 : vec3<f32> = u_xlat4;
  let x_611 : vec3<f32> = (vec3<f32>(x_608, x_608, x_608) * x_610);
  let x_612 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_611.x, x_612.y, x_611.y, x_611.z);
  let x_614 : vec3<f32> = u_xlat4;
  let x_615 : f32 = u_xlat21;
  u_xlat3 = (x_614 * vec3<f32>(x_615, x_615, x_615));
  let x_618 : f32 = u_xlat9;
  u_xlat21 = (-(x_618) + 1.0f);
  let x_621 : f32 = u_xlat21;
  let x_622 : f32 = u_xlat21;
  u_xlat22 = (x_621 * x_622);
  let x_624 : f32 = u_xlat22;
  let x_625 : f32 = u_xlat22;
  u_xlat22 = (x_624 * x_625);
  let x_627 : f32 = u_xlat21;
  let x_628 : f32 = u_xlat22;
  u_xlat21 = (x_627 * x_628);
  let x_630 : vec3<f32> = u_xlat0;
  u_xlat4 = (-(x_630) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_634 : vec3<f32> = u_xlat4;
  let x_635 : f32 = u_xlat21;
  let x_638 : vec3<f32> = u_xlat0;
  u_xlat0 = ((x_634 * vec3<f32>(x_635, x_635, x_635)) + x_638);
  let x_640 : vec3<f32> = u_xlat0;
  let x_641 : vec3<f32> = u_xlat3;
  u_xlat0 = (x_640 * x_641);
  let x_643 : vec3<f32> = u_xlat1;
  let x_644 : vec4<f32> = u_xlat2;
  let x_647 : vec3<f32> = u_xlat0;
  u_xlat0 = ((x_643 * vec3<f32>(x_644.x, x_644.z, x_644.w)) + x_647);
  let x_650 : f32 = vs_TEXCOORD1.w;
  let x_652 : f32 = x_33.x_ProjectionParams.y;
  u_xlat21 = (x_650 / x_652);
  let x_654 : f32 = u_xlat21;
  u_xlat21 = (-(x_654) + 1.0f);
  let x_657 : f32 = u_xlat21;
  let x_659 : f32 = x_33.x_ProjectionParams.z;
  u_xlat21 = (x_657 * x_659);
  let x_661 : f32 = u_xlat21;
  u_xlat21 = max(x_661, 0.0f);
  let x_663 : f32 = u_xlat21;
  let x_666 : f32 = x_33.unity_FogParams.x;
  u_xlat21 = (x_663 * x_666);
  let x_668 : f32 = u_xlat21;
  let x_669 : f32 = u_xlat21;
  u_xlat21 = (x_668 * -(x_669));
  let x_672 : f32 = u_xlat21;
  u_xlat21 = exp2(x_672);
  let x_676 : vec3<f32> = u_xlat0;
  let x_677 : f32 = u_xlat21;
  let x_679 : vec3<f32> = (x_676 * vec3<f32>(x_677, x_677, x_677));
  let x_680 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_679.x, x_679.y, x_679.z, x_680.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec4<f32>, @location(4) vs_TEXCOORD4_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec4<f32>, @location(5) vs_TEXCOORD5_param : vec3<f32>, @location(6) vs_TEXCOORD7_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD5 = vs_TEXCOORD5_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

