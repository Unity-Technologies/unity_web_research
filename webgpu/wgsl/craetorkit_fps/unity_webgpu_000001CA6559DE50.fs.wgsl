struct PGlobals {
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding : u32,
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
  var x_276 : vec3<f32>;
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
  let x_187 : vec4<f32> = x_33.unity_ShadowFadeCenterAndType;
  let x_190 : vec3<f32> = (x_185 + -(vec3<f32>(x_187.x, x_187.y, x_187.z)));
  let x_191 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_190.x, x_190.y, x_190.z, x_191.w);
  let x_194 : vec4<f32> = u_xlat5;
  let x_196 : vec4<f32> = u_xlat5;
  u_xlat23 = dot(vec3<f32>(x_194.x, x_194.y, x_194.z), vec3<f32>(x_196.x, x_196.y, x_196.z));
  let x_199 : f32 = u_xlat23;
  u_xlat23 = sqrt(x_199);
  let x_201 : f32 = u_xlat22;
  let x_203 : f32 = u_xlat23;
  u_xlat23 = (-(x_201) + x_203);
  let x_207 : f32 = x_33.unity_ShadowFadeCenterAndType.w;
  let x_208 : f32 = u_xlat23;
  let x_210 : f32 = u_xlat22;
  u_xlat22 = ((x_207 * x_208) + x_210);
  let x_212 : f32 = u_xlat22;
  let x_214 : f32 = x_33.x_LightShadowData.z;
  let x_217 : f32 = x_33.x_LightShadowData.w;
  u_xlat22 = ((x_212 * x_214) + x_217);
  let x_219 : f32 = u_xlat22;
  u_xlat22 = clamp(x_219, 0.0f, 1.0f);
  let x_228 : f32 = x_33.unity_ProbeVolumeParams.x;
  u_xlatb23 = (x_228 == 1.0f);
  let x_230 : bool = u_xlatb23;
  if (x_230) {
    let x_234 : f32 = x_33.unity_ProbeVolumeParams.y;
    u_xlatb23 = (x_234 == 1.0f);
    let x_236 : vec3<f32> = vs_TEXCOORD5;
    let x_240 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[1i];
    let x_242 : vec3<f32> = (vec3<f32>(x_236.y, x_236.y, x_236.y) * vec3<f32>(x_240.x, x_240.y, x_240.z));
    let x_243 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_242.x, x_242.y, x_242.z, x_243.w);
    let x_246 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[0i];
    let x_248 : vec3<f32> = vs_TEXCOORD5;
    let x_251 : vec4<f32> = u_xlat5;
    let x_253 : vec3<f32> = ((vec3<f32>(x_246.x, x_246.y, x_246.z) * vec3<f32>(x_248.x, x_248.x, x_248.x)) + vec3<f32>(x_251.x, x_251.y, x_251.z));
    let x_254 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_253.x, x_253.y, x_253.z, x_254.w);
    let x_257 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[2i];
    let x_259 : vec3<f32> = vs_TEXCOORD5;
    let x_262 : vec4<f32> = u_xlat5;
    let x_264 : vec3<f32> = ((vec3<f32>(x_257.x, x_257.y, x_257.z) * vec3<f32>(x_259.z, x_259.z, x_259.z)) + vec3<f32>(x_262.x, x_262.y, x_262.z));
    let x_265 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_264.x, x_264.y, x_264.z, x_265.w);
    let x_267 : vec4<f32> = u_xlat5;
    let x_270 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[3i];
    let x_272 : vec3<f32> = (vec3<f32>(x_267.x, x_267.y, x_267.z) + vec3<f32>(x_270.x, x_270.y, x_270.z));
    let x_273 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_272.x, x_272.y, x_272.z, x_273.w);
    let x_275 : bool = u_xlatb23;
    if (x_275) {
      let x_279 : vec4<f32> = u_xlat5;
      x_276 = vec3<f32>(x_279.x, x_279.y, x_279.z);
    } else {
      let x_282 : vec3<f32> = vs_TEXCOORD5;
      x_276 = x_282;
    }
    let x_283 : vec3<f32> = x_276;
    let x_284 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_283.x, x_283.y, x_283.z, x_284.w);
    let x_286 : vec4<f32> = u_xlat5;
    let x_290 : vec3<f32> = x_33.unity_ProbeVolumeMin;
    let x_292 : vec3<f32> = (vec3<f32>(x_286.x, x_286.y, x_286.z) + -(x_290));
    let x_293 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_292.x, x_292.y, x_292.z, x_293.w);
    let x_295 : vec4<f32> = u_xlat5;
    let x_299 : vec3<f32> = x_33.unity_ProbeVolumeSizeInv;
    let x_300 : vec3<f32> = (vec3<f32>(x_295.x, x_295.y, x_295.z) * x_299);
    let x_301 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_301.x, x_300.x, x_300.y, x_300.z);
    let x_304 : f32 = u_xlat5.y;
    u_xlat23 = ((x_304 * 0.25f) + 0.75f);
    let x_311 : f32 = x_33.unity_ProbeVolumeParams.z;
    u_xlat24 = ((x_311 * 0.5f) + 0.75f);
    let x_315 : f32 = u_xlat23;
    let x_316 : f32 = u_xlat24;
    u_xlat5.x = max(x_315, x_316);
    let x_327 : vec4<f32> = u_xlat5;
    let x_329 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_327.x, x_327.z, x_327.w));
    u_xlat5 = x_329;
  } else {
    u_xlat5.x = 1.0f;
    u_xlat5.y = 1.0f;
    u_xlat5.z = 1.0f;
    u_xlat5.w = 1.0f;
  }
  let x_335 : vec4<f32> = u_xlat5;
  let x_337 : vec4<f32> = x_33.unity_OcclusionMaskSelector;
  u_xlat23 = dot(x_335, x_337);
  let x_339 : f32 = u_xlat23;
  u_xlat23 = clamp(x_339, 0.0f, 1.0f);
  let x_344 : vec4<f32> = vs_TEXCOORD7;
  let x_346 : vec4<f32> = vs_TEXCOORD7;
  u_xlat18 = (vec2<f32>(x_344.x, x_344.y) / vec2<f32>(x_346.w, x_346.w));
  let x_354 : vec2<f32> = u_xlat18;
  let x_355 : vec4<f32> = textureSample(x_ShadowMapTexture, sampler_ShadowMapTexture, x_354);
  u_xlat24 = x_355.x;
  let x_357 : f32 = u_xlat23;
  let x_358 : f32 = u_xlat24;
  u_xlat23 = (x_357 + -(x_358));
  let x_361 : f32 = u_xlat22;
  let x_362 : f32 = u_xlat23;
  let x_364 : f32 = u_xlat24;
  u_xlat22 = ((x_361 * x_362) + x_364);
  let x_371 : vec3<f32> = u_xlat4;
  let x_373 : vec4<f32> = textureSample(x_LightTexture0, sampler_LightTexture0, vec2<f32>(x_371.x, x_371.y));
  u_xlat23 = x_373.w;
  let x_375 : f32 = u_xlat22;
  let x_376 : f32 = u_xlat23;
  u_xlat22 = (x_375 * x_376);
  let x_378 : f32 = u_xlat22;
  let x_382 : vec4<f32> = x_33.x_LightColor0;
  u_xlat4 = (vec3<f32>(x_378, x_378, x_378) * vec3<f32>(x_382.x, x_382.y, x_382.z));
  let x_387 : f32 = x_33.x_Glossiness;
  u_xlat22 = (-(x_387) + 1.0f);
  let x_393 : f32 = vs_TEXCOORD2.w;
  u_xlat5.x = x_393;
  let x_397 : f32 = vs_TEXCOORD3.w;
  u_xlat5.y = x_397;
  let x_400 : f32 = vs_TEXCOORD4.w;
  u_xlat5.z = x_400;
  let x_402 : vec4<f32> = vs_TEXCOORD1;
  let x_405 : f32 = u_xlat21;
  let x_408 : vec4<f32> = u_xlat5;
  u_xlat6 = ((-(vec3<f32>(x_402.x, x_402.y, x_402.z)) * vec3<f32>(x_405, x_405, x_405)) + vec3<f32>(x_408.x, x_408.y, x_408.z));
  let x_411 : vec3<f32> = u_xlat6;
  let x_412 : vec3<f32> = u_xlat6;
  u_xlat21 = dot(x_411, x_412);
  let x_414 : f32 = u_xlat21;
  u_xlat21 = max(x_414, 0.001f);
  let x_417 : f32 = u_xlat21;
  u_xlat21 = inverseSqrt(x_417);
  let x_419 : f32 = u_xlat21;
  let x_421 : vec3<f32> = u_xlat6;
  u_xlat6 = (vec3<f32>(x_419, x_419, x_419) * x_421);
  let x_423 : vec4<f32> = u_xlat2;
  let x_425 : vec3<f32> = u_xlat3;
  u_xlat21 = dot(vec3<f32>(x_423.x, x_423.y, x_423.z), -(x_425));
  let x_428 : vec4<f32> = u_xlat2;
  let x_430 : vec4<f32> = u_xlat5;
  u_xlat23 = dot(vec3<f32>(x_428.x, x_428.y, x_428.z), vec3<f32>(x_430.x, x_430.y, x_430.z));
  let x_433 : f32 = u_xlat23;
  u_xlat23 = clamp(x_433, 0.0f, 1.0f);
  let x_435 : vec4<f32> = u_xlat2;
  let x_437 : vec3<f32> = u_xlat6;
  u_xlat2.x = dot(vec3<f32>(x_435.x, x_435.y, x_435.z), x_437);
  let x_441 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_441, 0.0f, 1.0f);
  let x_445 : vec4<f32> = u_xlat5;
  let x_447 : vec3<f32> = u_xlat6;
  u_xlat9 = dot(vec3<f32>(x_445.x, x_445.y, x_445.z), x_447);
  let x_449 : f32 = u_xlat9;
  u_xlat9 = clamp(x_449, 0.0f, 1.0f);
  let x_452 : f32 = u_xlat9;
  let x_453 : f32 = u_xlat9;
  u_xlat16 = (x_452 * x_453);
  let x_455 : f32 = u_xlat16;
  let x_457 : f32 = u_xlat22;
  u_xlat16 = dot(vec2<f32>(x_455, x_455), vec2<f32>(x_457, x_457));
  let x_460 : f32 = u_xlat16;
  u_xlat16 = (x_460 + -0.5f);
  let x_463 : f32 = u_xlat23;
  u_xlat3.x = (-(x_463) + 1.0f);
  let x_469 : f32 = u_xlat3.x;
  let x_471 : f32 = u_xlat3.x;
  u_xlat10 = (x_469 * x_471);
  let x_473 : f32 = u_xlat10;
  let x_474 : f32 = u_xlat10;
  u_xlat10 = (x_473 * x_474);
  let x_477 : f32 = u_xlat3.x;
  let x_478 : f32 = u_xlat10;
  u_xlat3.x = (x_477 * x_478);
  let x_481 : f32 = u_xlat16;
  let x_483 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_481 * x_483) + 1.0f);
  let x_487 : f32 = u_xlat21;
  u_xlat10 = (-(abs(x_487)) + 1.0f);
  let x_492 : f32 = u_xlat10;
  let x_493 : f32 = u_xlat10;
  u_xlat17 = (x_492 * x_493);
  let x_495 : f32 = u_xlat17;
  let x_496 : f32 = u_xlat17;
  u_xlat17 = (x_495 * x_496);
  let x_498 : f32 = u_xlat10;
  let x_499 : f32 = u_xlat17;
  u_xlat10 = (x_498 * x_499);
  let x_501 : f32 = u_xlat16;
  let x_502 : f32 = u_xlat10;
  u_xlat16 = ((x_501 * x_502) + 1.0f);
  let x_505 : f32 = u_xlat16;
  let x_507 : f32 = u_xlat3.x;
  u_xlat16 = (x_505 * x_507);
  let x_509 : f32 = u_xlat23;
  let x_510 : f32 = u_xlat16;
  u_xlat16 = (x_509 * x_510);
  let x_512 : f32 = u_xlat22;
  let x_513 : f32 = u_xlat22;
  u_xlat22 = (x_512 * x_513);
  let x_515 : f32 = u_xlat22;
  u_xlat22 = max(x_515, 0.002f);
  let x_518 : f32 = u_xlat22;
  u_xlat3.x = (-(x_518) + 1.0f);
  let x_522 : f32 = u_xlat21;
  let x_525 : f32 = u_xlat3.x;
  let x_527 : f32 = u_xlat22;
  u_xlat10 = ((abs(x_522) * x_525) + x_527);
  let x_529 : f32 = u_xlat23;
  let x_531 : f32 = u_xlat3.x;
  let x_533 : f32 = u_xlat22;
  u_xlat3.x = ((x_529 * x_531) + x_533);
  let x_536 : f32 = u_xlat21;
  let x_539 : f32 = u_xlat3.x;
  u_xlat21 = (abs(x_536) * x_539);
  let x_541 : f32 = u_xlat23;
  let x_542 : f32 = u_xlat10;
  let x_544 : f32 = u_xlat21;
  u_xlat21 = ((x_541 * x_542) + x_544);
  let x_546 : f32 = u_xlat21;
  u_xlat21 = (x_546 + 0.00001f);
  let x_549 : f32 = u_xlat21;
  u_xlat21 = (0.5f / x_549);
  let x_551 : f32 = u_xlat22;
  let x_552 : f32 = u_xlat22;
  u_xlat22 = (x_551 * x_552);
  let x_555 : f32 = u_xlat2.x;
  let x_556 : f32 = u_xlat22;
  let x_559 : f32 = u_xlat2.x;
  u_xlat3.x = ((x_555 * x_556) + -(x_559));
  let x_564 : f32 = u_xlat3.x;
  let x_566 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_564 * x_566) + 1.0f);
  let x_570 : f32 = u_xlat22;
  u_xlat22 = (x_570 * 0.318309873f);
  let x_574 : f32 = u_xlat2.x;
  let x_576 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_574 * x_576) + 0.0000001f);
  let x_581 : f32 = u_xlat22;
  let x_583 : f32 = u_xlat2.x;
  u_xlat22 = (x_581 / x_583);
  let x_585 : f32 = u_xlat21;
  let x_586 : f32 = u_xlat22;
  u_xlat21 = (x_585 * x_586);
  let x_588 : f32 = u_xlat23;
  let x_589 : f32 = u_xlat21;
  u_xlat21 = (x_588 * x_589);
  let x_591 : f32 = u_xlat21;
  u_xlat21 = (x_591 * 3.141592741f);
  let x_594 : f32 = u_xlat21;
  u_xlat21 = max(x_594, 0.0f);
  let x_596 : vec3<f32> = u_xlat0;
  let x_597 : vec3<f32> = u_xlat0;
  u_xlat22 = dot(x_596, x_597);
  let x_600 : f32 = u_xlat22;
  u_xlatb22 = !((x_600 == 0.0f));
  let x_602 : bool = u_xlatb22;
  u_xlat22 = select(0.0f, 1.0f, x_602);
  let x_604 : f32 = u_xlat21;
  let x_605 : f32 = u_xlat22;
  u_xlat21 = (x_604 * x_605);
  let x_607 : f32 = u_xlat16;
  let x_609 : vec3<f32> = u_xlat4;
  let x_610 : vec3<f32> = (vec3<f32>(x_607, x_607, x_607) * x_609);
  let x_611 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_610.x, x_611.y, x_610.y, x_610.z);
  let x_613 : vec3<f32> = u_xlat4;
  let x_614 : f32 = u_xlat21;
  u_xlat3 = (x_613 * vec3<f32>(x_614, x_614, x_614));
  let x_617 : f32 = u_xlat9;
  u_xlat21 = (-(x_617) + 1.0f);
  let x_620 : f32 = u_xlat21;
  let x_621 : f32 = u_xlat21;
  u_xlat22 = (x_620 * x_621);
  let x_623 : f32 = u_xlat22;
  let x_624 : f32 = u_xlat22;
  u_xlat22 = (x_623 * x_624);
  let x_626 : f32 = u_xlat21;
  let x_627 : f32 = u_xlat22;
  u_xlat21 = (x_626 * x_627);
  let x_629 : vec3<f32> = u_xlat0;
  u_xlat4 = (-(x_629) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_633 : vec3<f32> = u_xlat4;
  let x_634 : f32 = u_xlat21;
  let x_637 : vec3<f32> = u_xlat0;
  u_xlat0 = ((x_633 * vec3<f32>(x_634, x_634, x_634)) + x_637);
  let x_639 : vec3<f32> = u_xlat0;
  let x_640 : vec3<f32> = u_xlat3;
  u_xlat0 = (x_639 * x_640);
  let x_644 : vec3<f32> = u_xlat1;
  let x_645 : vec4<f32> = u_xlat2;
  let x_648 : vec3<f32> = u_xlat0;
  let x_649 : vec3<f32> = ((x_644 * vec3<f32>(x_645.x, x_645.z, x_645.w)) + x_648);
  let x_650 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_649.x, x_649.y, x_649.z, x_650.w);
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

