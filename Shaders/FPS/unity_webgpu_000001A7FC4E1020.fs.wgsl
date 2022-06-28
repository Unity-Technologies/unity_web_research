struct PGlobals {
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding : u32,
  x_WorldSpaceLightPos0 : vec4<f32>,
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
  unity_WorldToLight : mat4x4<f32>,
  x_Glossiness : f32,
  x_Metallic : f32,
  @size(8)
  padding_3 : u32,
  x_Color : vec4<f32>,
}

var<private> u_xlat0 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

@group(0) @binding(0) var<uniform> x_18 : PGlobals;

var<private> u_xlat24 : f32;

var<private> u_xlat1 : vec3<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat25 : f32;

var<private> u_xlat3 : vec3<f32>;

var<private> u_xlat4 : vec3<f32>;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(8) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> u_xlat5 : vec3<f32>;

var<private> vs_COLOR0 : vec4<f32>;

var<private> u_xlat6 : vec3<f32>;

var<private> u_xlat7 : vec3<f32>;

var<private> u_xlatb2 : bool;

var<private> u_xlat10 : vec3<f32>;

var<private> u_xlat27 : f32;

@group(0) @binding(3) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(5) var samplerunity_ProbeVolumeSH : sampler;

@group(0) @binding(4) var x_ShadowMapTexture : texture_depth_cube;

@group(0) @binding(6) var sampler_ShadowMapTexture : sampler_comparison;

var<private> u_xlat18 : f32;

@group(0) @binding(2) var x_LightTexture0 : texture_2d<f32>;

@group(0) @binding(7) var sampler_LightTexture0 : sampler;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> u_xlat26 : f32;

var<private> u_xlat8 : vec3<f32>;

var<private> u_xlat16 : f32;

var<private> u_xlat9 : f32;

var<private> u_xlatb24 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_233 : vec3<f32>;
  var txVec0 : vec4<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_12 : vec3<f32> = vs_TEXCOORD2;
  let x_23 : vec4<f32> = x_18.x_WorldSpaceLightPos0;
  u_xlat0 = (-(x_12) + vec3<f32>(x_23.x, x_23.y, x_23.z));
  let x_28 : vec3<f32> = u_xlat0;
  let x_29 : vec3<f32> = u_xlat0;
  u_xlat24 = dot(x_28, x_29);
  let x_31 : f32 = u_xlat24;
  u_xlat24 = inverseSqrt(x_31);
  let x_34 : f32 = u_xlat24;
  let x_36 : vec3<f32> = u_xlat0;
  u_xlat1 = (vec3<f32>(x_34, x_34, x_34) * x_36);
  let x_40 : vec3<f32> = vs_TEXCOORD2;
  let x_45 : vec3<f32> = x_18.x_WorldSpaceCameraPos;
  let x_46 : vec3<f32> = (-(x_40) + x_45);
  let x_47 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_46.x, x_46.y, x_46.z, x_47.w);
  let x_50 : vec4<f32> = u_xlat2;
  let x_52 : vec4<f32> = u_xlat2;
  u_xlat25 = dot(vec3<f32>(x_50.x, x_50.y, x_50.z), vec3<f32>(x_52.x, x_52.y, x_52.z));
  let x_55 : f32 = u_xlat25;
  u_xlat25 = inverseSqrt(x_55);
  let x_58 : f32 = u_xlat25;
  let x_60 : vec4<f32> = u_xlat2;
  u_xlat3 = (vec3<f32>(x_58, x_58, x_58) * vec3<f32>(x_60.x, x_60.y, x_60.z));
  let x_77 : vec2<f32> = vs_TEXCOORD0;
  let x_78 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_77);
  u_xlat4 = vec3<f32>(x_78.x, x_78.y, x_78.z);
  let x_80 : vec3<f32> = u_xlat4;
  let x_83 : vec4<f32> = x_18.x_Color;
  u_xlat4 = (x_80 * vec3<f32>(x_83.x, x_83.y, x_83.z));
  let x_87 : vec3<f32> = u_xlat4;
  let x_90 : vec4<f32> = vs_COLOR0;
  u_xlat5 = (x_87 * vec3<f32>(x_90.x, x_90.y, x_90.z));
  let x_94 : vec3<f32> = vs_TEXCOORD2;
  let x_98 : vec4<f32> = x_18.unity_WorldToLight[1i];
  u_xlat6 = (vec3<f32>(x_94.y, x_94.y, x_94.y) * vec3<f32>(x_98.x, x_98.y, x_98.z));
  let x_102 : vec4<f32> = x_18.unity_WorldToLight[0i];
  let x_104 : vec3<f32> = vs_TEXCOORD2;
  let x_107 : vec3<f32> = u_xlat6;
  u_xlat6 = ((vec3<f32>(x_102.x, x_102.y, x_102.z) * vec3<f32>(x_104.x, x_104.x, x_104.x)) + x_107);
  let x_111 : vec4<f32> = x_18.unity_WorldToLight[2i];
  let x_113 : vec3<f32> = vs_TEXCOORD2;
  let x_116 : vec3<f32> = u_xlat6;
  u_xlat6 = ((vec3<f32>(x_111.x, x_111.y, x_111.z) * vec3<f32>(x_113.z, x_113.z, x_113.z)) + x_116);
  let x_118 : vec3<f32> = u_xlat6;
  let x_121 : vec4<f32> = x_18.unity_WorldToLight[3i];
  u_xlat6 = (x_118 + vec3<f32>(x_121.x, x_121.y, x_121.z));
  let x_130 : f32 = x_18.unity_MatrixV[0i].z;
  u_xlat7.x = x_130;
  let x_134 : f32 = x_18.unity_MatrixV[1i].z;
  u_xlat7.y = x_134;
  let x_138 : f32 = x_18.unity_MatrixV[2i].z;
  u_xlat7.z = x_138;
  let x_140 : vec4<f32> = u_xlat2;
  let x_142 : vec3<f32> = u_xlat7;
  u_xlat25 = dot(vec3<f32>(x_140.x, x_140.y, x_140.z), x_142);
  let x_144 : vec3<f32> = vs_TEXCOORD2;
  let x_147 : vec4<f32> = x_18.unity_ShadowFadeCenterAndType;
  let x_150 : vec3<f32> = (x_144 + -(vec3<f32>(x_147.x, x_147.y, x_147.z)));
  let x_151 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_150.x, x_150.y, x_150.z, x_151.w);
  let x_153 : vec4<f32> = u_xlat2;
  let x_155 : vec4<f32> = u_xlat2;
  u_xlat2.x = dot(vec3<f32>(x_153.x, x_153.y, x_153.z), vec3<f32>(x_155.x, x_155.y, x_155.z));
  let x_160 : f32 = u_xlat2.x;
  u_xlat2.x = sqrt(x_160);
  let x_163 : f32 = u_xlat25;
  let x_166 : f32 = u_xlat2.x;
  u_xlat2.x = (-(x_163) + x_166);
  let x_171 : f32 = x_18.unity_ShadowFadeCenterAndType.w;
  let x_173 : f32 = u_xlat2.x;
  let x_175 : f32 = u_xlat25;
  u_xlat25 = ((x_171 * x_173) + x_175);
  let x_177 : f32 = u_xlat25;
  let x_180 : f32 = x_18.x_LightShadowData.z;
  let x_183 : f32 = x_18.x_LightShadowData.w;
  u_xlat25 = ((x_177 * x_180) + x_183);
  let x_185 : f32 = u_xlat25;
  u_xlat25 = clamp(x_185, 0.0f, 1.0f);
  let x_194 : f32 = x_18.unity_ProbeVolumeParams.x;
  u_xlatb2 = (x_194 == 1.0f);
  let x_196 : bool = u_xlatb2;
  if (x_196) {
    let x_200 : f32 = x_18.unity_ProbeVolumeParams.y;
    u_xlatb2 = (x_200 == 1.0f);
    let x_203 : vec3<f32> = vs_TEXCOORD2;
    let x_207 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[1i];
    u_xlat10 = (vec3<f32>(x_203.y, x_203.y, x_203.y) * vec3<f32>(x_207.x, x_207.y, x_207.z));
    let x_211 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[0i];
    let x_213 : vec3<f32> = vs_TEXCOORD2;
    let x_216 : vec3<f32> = u_xlat10;
    u_xlat10 = ((vec3<f32>(x_211.x, x_211.y, x_211.z) * vec3<f32>(x_213.x, x_213.x, x_213.x)) + x_216);
    let x_219 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[2i];
    let x_221 : vec3<f32> = vs_TEXCOORD2;
    let x_224 : vec3<f32> = u_xlat10;
    u_xlat10 = ((vec3<f32>(x_219.x, x_219.y, x_219.z) * vec3<f32>(x_221.z, x_221.z, x_221.z)) + x_224);
    let x_226 : vec3<f32> = u_xlat10;
    let x_228 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[3i];
    u_xlat10 = (x_226 + vec3<f32>(x_228.x, x_228.y, x_228.z));
    let x_231 : bool = u_xlatb2;
    if (x_231) {
      let x_236 : vec3<f32> = u_xlat10;
      x_233 = x_236;
    } else {
      let x_238 : vec3<f32> = vs_TEXCOORD2;
      x_233 = x_238;
    }
    let x_239 : vec3<f32> = x_233;
    let x_240 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_239.x, x_239.y, x_239.z, x_240.w);
    let x_242 : vec4<f32> = u_xlat2;
    let x_246 : vec3<f32> = x_18.unity_ProbeVolumeMin;
    let x_248 : vec3<f32> = (vec3<f32>(x_242.x, x_242.y, x_242.z) + -(x_246));
    let x_249 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_248.x, x_248.y, x_248.z, x_249.w);
    let x_251 : vec4<f32> = u_xlat2;
    let x_255 : vec3<f32> = x_18.unity_ProbeVolumeSizeInv;
    let x_256 : vec3<f32> = (vec3<f32>(x_251.x, x_251.y, x_251.z) * x_255);
    let x_257 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_257.x, x_256.x, x_256.y, x_256.z);
    let x_260 : f32 = u_xlat2.y;
    u_xlat10.x = ((x_260 * 0.25f) + 0.75f);
    let x_268 : f32 = x_18.unity_ProbeVolumeParams.z;
    u_xlat27 = ((x_268 * 0.5f) + 0.75f);
    let x_273 : f32 = u_xlat10.x;
    let x_274 : f32 = u_xlat27;
    u_xlat2.x = max(x_273, x_274);
    let x_285 : vec4<f32> = u_xlat2;
    let x_287 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_285.x, x_285.z, x_285.w));
    u_xlat2 = x_287;
  } else {
    u_xlat2.x = 1.0f;
    u_xlat2.y = 1.0f;
    u_xlat2.z = 1.0f;
    u_xlat2.w = 1.0f;
  }
  let x_293 : vec4<f32> = u_xlat2;
  let x_296 : vec4<f32> = x_18.unity_OcclusionMaskSelector;
  u_xlat2.x = dot(x_293, x_296);
  let x_300 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_300, 0.0f, 1.0f);
  let x_303 : vec3<f32> = vs_TEXCOORD2;
  let x_305 : vec4<f32> = x_18.x_LightPositionRange;
  u_xlat10 = (x_303 + -(vec3<f32>(x_305.x, x_305.y, x_305.z)));
  let x_310 : f32 = u_xlat10.y;
  let x_313 : f32 = u_xlat10.x;
  u_xlat27 = max(abs(x_310), abs(x_313));
  let x_317 : f32 = u_xlat10.z;
  let x_319 : f32 = u_xlat27;
  u_xlat27 = max(abs(x_317), x_319);
  let x_321 : f32 = u_xlat27;
  let x_323 : f32 = x_18.x_LightProjectionParams.z;
  u_xlat27 = (x_321 + -(x_323));
  let x_326 : f32 = u_xlat27;
  u_xlat27 = max(x_326, 0.00001f);
  let x_329 : f32 = u_xlat27;
  let x_331 : f32 = x_18.x_LightProjectionParams.w;
  u_xlat27 = (x_329 * x_331);
  let x_334 : f32 = x_18.x_LightProjectionParams.y;
  let x_335 : f32 = u_xlat27;
  u_xlat27 = (x_334 / x_335);
  let x_337 : f32 = u_xlat27;
  let x_339 : f32 = x_18.x_LightProjectionParams.x;
  u_xlat27 = (x_337 + -(x_339));
  let x_342 : f32 = u_xlat27;
  u_xlat27 = (-(x_342) + 1.0f);
  let x_347 : vec3<f32> = u_xlat10;
  let x_348 : f32 = u_xlat27;
  txVec0 = vec4<f32>(x_347.x, x_347.y, x_347.z, x_348);
  let x_361 : vec4<f32> = txVec0;
  let x_363 : f32 = textureSampleCompare(x_ShadowMapTexture, sampler_ShadowMapTexture, x_361.xyz, x_361.w);
  u_xlat10.x = x_363;
  let x_367 : f32 = x_18.x_LightShadowData.x;
  u_xlat18 = (-(x_367) + 1.0f);
  let x_371 : f32 = u_xlat10.x;
  let x_372 : f32 = u_xlat18;
  let x_375 : f32 = x_18.x_LightShadowData.x;
  u_xlat10.x = ((x_371 * x_372) + x_375);
  let x_379 : f32 = u_xlat10.x;
  let x_382 : f32 = u_xlat2.x;
  u_xlat2.x = (-(x_379) + x_382);
  let x_385 : f32 = u_xlat25;
  let x_387 : f32 = u_xlat2.x;
  let x_390 : f32 = u_xlat10.x;
  u_xlat25 = ((x_385 * x_387) + x_390);
  let x_392 : vec3<f32> = u_xlat6;
  let x_393 : vec3<f32> = u_xlat6;
  u_xlat2.x = dot(x_392, x_393);
  let x_401 : vec4<f32> = u_xlat2;
  let x_403 : vec4<f32> = textureSample(x_LightTexture0, sampler_LightTexture0, vec2<f32>(x_401.x, x_401.x));
  u_xlat2.x = x_403.x;
  let x_406 : f32 = u_xlat25;
  let x_408 : f32 = u_xlat2.x;
  u_xlat25 = (x_406 * x_408);
  let x_410 : f32 = u_xlat25;
  let x_414 : vec4<f32> = x_18.x_LightColor0;
  let x_416 : vec3<f32> = (vec3<f32>(x_410, x_410, x_410) * vec3<f32>(x_414.x, x_414.y, x_414.z));
  let x_417 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_416.x, x_416.y, x_416.z, x_417.w);
  let x_420 : vec3<f32> = vs_TEXCOORD1;
  let x_421 : vec3<f32> = vs_TEXCOORD1;
  u_xlat25 = dot(x_420, x_421);
  let x_423 : f32 = u_xlat25;
  u_xlat25 = inverseSqrt(x_423);
  let x_425 : f32 = u_xlat25;
  let x_427 : vec3<f32> = vs_TEXCOORD1;
  u_xlat6 = (vec3<f32>(x_425, x_425, x_425) * x_427);
  let x_429 : vec3<f32> = u_xlat4;
  let x_430 : vec4<f32> = vs_COLOR0;
  u_xlat4 = ((x_429 * vec3<f32>(x_430.x, x_430.y, x_430.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_438 : f32 = x_18.x_Metallic;
  let x_440 : f32 = x_18.x_Metallic;
  let x_442 : f32 = x_18.x_Metallic;
  let x_443 : vec3<f32> = vec3<f32>(x_438, x_440, x_442);
  let x_448 : vec3<f32> = u_xlat4;
  u_xlat4 = ((vec3<f32>(x_443.x, x_443.y, x_443.z) * x_448) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_454 : f32 = x_18.x_Metallic;
  u_xlat25 = ((-(x_454) * 0.959999979f) + 0.959999979f);
  let x_459 : f32 = u_xlat25;
  let x_461 : vec3<f32> = u_xlat5;
  u_xlat5 = (vec3<f32>(x_459, x_459, x_459) * x_461);
  let x_465 : f32 = x_18.x_Glossiness;
  u_xlat25 = (-(x_465) + 1.0f);
  let x_468 : vec3<f32> = u_xlat0;
  let x_469 : f32 = u_xlat24;
  let x_472 : vec3<f32> = u_xlat3;
  u_xlat0 = ((x_468 * vec3<f32>(x_469, x_469, x_469)) + x_472);
  let x_474 : vec3<f32> = u_xlat0;
  let x_475 : vec3<f32> = u_xlat0;
  u_xlat24 = dot(x_474, x_475);
  let x_477 : f32 = u_xlat24;
  u_xlat24 = max(x_477, 0.001f);
  let x_480 : f32 = u_xlat24;
  u_xlat24 = inverseSqrt(x_480);
  let x_482 : f32 = u_xlat24;
  let x_484 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_482, x_482, x_482) * x_484);
  let x_486 : vec3<f32> = u_xlat6;
  let x_487 : vec3<f32> = u_xlat3;
  u_xlat24 = dot(x_486, x_487);
  let x_490 : vec3<f32> = u_xlat6;
  let x_491 : vec3<f32> = u_xlat1;
  u_xlat26 = dot(x_490, x_491);
  let x_493 : f32 = u_xlat26;
  u_xlat26 = clamp(x_493, 0.0f, 1.0f);
  let x_495 : vec3<f32> = u_xlat6;
  let x_496 : vec3<f32> = u_xlat0;
  u_xlat3.x = dot(x_495, x_496);
  let x_500 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_500, 0.0f, 1.0f);
  let x_503 : vec3<f32> = u_xlat1;
  let x_504 : vec3<f32> = u_xlat0;
  u_xlat0.x = dot(x_503, x_504);
  let x_508 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_508, 0.0f, 1.0f);
  let x_513 : f32 = u_xlat0.x;
  let x_515 : f32 = u_xlat0.x;
  u_xlat8.x = (x_513 * x_515);
  let x_518 : vec3<f32> = u_xlat8;
  let x_520 : f32 = u_xlat25;
  u_xlat8.x = dot(vec2<f32>(x_518.x, x_518.x), vec2<f32>(x_520, x_520));
  let x_525 : f32 = u_xlat8.x;
  u_xlat8.x = (x_525 + -0.5f);
  let x_530 : f32 = u_xlat26;
  u_xlat16 = (-(x_530) + 1.0f);
  let x_533 : f32 = u_xlat16;
  let x_534 : f32 = u_xlat16;
  u_xlat1.x = (x_533 * x_534);
  let x_538 : f32 = u_xlat1.x;
  let x_540 : f32 = u_xlat1.x;
  u_xlat1.x = (x_538 * x_540);
  let x_543 : f32 = u_xlat16;
  let x_545 : f32 = u_xlat1.x;
  u_xlat16 = (x_543 * x_545);
  let x_548 : f32 = u_xlat8.x;
  let x_549 : f32 = u_xlat16;
  u_xlat16 = ((x_548 * x_549) + 1.0f);
  let x_552 : f32 = u_xlat24;
  u_xlat1.x = (-(abs(x_552)) + 1.0f);
  let x_559 : f32 = u_xlat1.x;
  let x_561 : f32 = u_xlat1.x;
  u_xlat9 = (x_559 * x_561);
  let x_563 : f32 = u_xlat9;
  let x_564 : f32 = u_xlat9;
  u_xlat9 = (x_563 * x_564);
  let x_567 : f32 = u_xlat1.x;
  let x_568 : f32 = u_xlat9;
  u_xlat1.x = (x_567 * x_568);
  let x_572 : f32 = u_xlat8.x;
  let x_574 : f32 = u_xlat1.x;
  u_xlat8.x = ((x_572 * x_574) + 1.0f);
  let x_579 : f32 = u_xlat8.x;
  let x_580 : f32 = u_xlat16;
  u_xlat8.x = (x_579 * x_580);
  let x_583 : f32 = u_xlat25;
  let x_584 : f32 = u_xlat25;
  u_xlat16 = (x_583 * x_584);
  let x_586 : f32 = u_xlat16;
  u_xlat16 = max(x_586, 0.002f);
  let x_589 : f32 = u_xlat16;
  u_xlat1.x = (-(x_589) + 1.0f);
  let x_593 : f32 = u_xlat24;
  let x_596 : f32 = u_xlat1.x;
  let x_598 : f32 = u_xlat16;
  u_xlat9 = ((abs(x_593) * x_596) + x_598);
  let x_600 : f32 = u_xlat26;
  let x_602 : f32 = u_xlat1.x;
  let x_604 : f32 = u_xlat16;
  u_xlat1.x = ((x_600 * x_602) + x_604);
  let x_607 : f32 = u_xlat24;
  let x_610 : f32 = u_xlat1.x;
  u_xlat24 = (abs(x_607) * x_610);
  let x_612 : f32 = u_xlat26;
  let x_613 : f32 = u_xlat9;
  let x_615 : f32 = u_xlat24;
  u_xlat24 = ((x_612 * x_613) + x_615);
  let x_617 : f32 = u_xlat24;
  u_xlat24 = (x_617 + 0.00001f);
  let x_619 : f32 = u_xlat24;
  u_xlat24 = (0.5f / x_619);
  let x_621 : f32 = u_xlat16;
  let x_622 : f32 = u_xlat16;
  u_xlat16 = (x_621 * x_622);
  let x_625 : f32 = u_xlat3.x;
  let x_626 : f32 = u_xlat16;
  let x_629 : f32 = u_xlat3.x;
  u_xlat1.x = ((x_625 * x_626) + -(x_629));
  let x_634 : f32 = u_xlat1.x;
  let x_636 : f32 = u_xlat3.x;
  u_xlat1.x = ((x_634 * x_636) + 1.0f);
  let x_640 : f32 = u_xlat16;
  u_xlat16 = (x_640 * 0.318309873f);
  let x_644 : f32 = u_xlat1.x;
  let x_646 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_644 * x_646) + 0.0000001f);
  let x_651 : f32 = u_xlat16;
  let x_653 : f32 = u_xlat1.x;
  u_xlat16 = (x_651 / x_653);
  let x_655 : f32 = u_xlat16;
  let x_656 : f32 = u_xlat24;
  u_xlat8.y = (x_655 * x_656);
  let x_659 : f32 = u_xlat26;
  let x_661 : vec3<f32> = u_xlat8;
  let x_663 : vec2<f32> = (vec2<f32>(x_659, x_659) * vec2<f32>(x_661.x, x_661.y));
  let x_664 : vec3<f32> = u_xlat8;
  u_xlat8 = vec3<f32>(x_663.x, x_663.y, x_664.z);
  let x_667 : f32 = u_xlat8.y;
  u_xlat16 = (x_667 * 3.141592741f);
  let x_670 : f32 = u_xlat16;
  u_xlat16 = max(x_670, 0.0f);
  let x_672 : vec3<f32> = u_xlat4;
  let x_673 : vec3<f32> = u_xlat4;
  u_xlat24 = dot(x_672, x_673);
  let x_676 : f32 = u_xlat24;
  u_xlatb24 = !((x_676 == 0.0f));
  let x_678 : bool = u_xlatb24;
  u_xlat24 = select(0.0f, 1.0f, x_678);
  let x_680 : f32 = u_xlat24;
  let x_681 : f32 = u_xlat16;
  u_xlat16 = (x_680 * x_681);
  let x_683 : vec3<f32> = u_xlat8;
  let x_685 : vec4<f32> = u_xlat2;
  u_xlat1 = (vec3<f32>(x_683.x, x_683.x, x_683.x) * vec3<f32>(x_685.x, x_685.y, x_685.z));
  let x_688 : vec4<f32> = u_xlat2;
  let x_690 : f32 = u_xlat16;
  u_xlat8 = (vec3<f32>(x_688.x, x_688.y, x_688.z) * vec3<f32>(x_690, x_690, x_690));
  let x_694 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_694) + 1.0f);
  let x_699 : f32 = u_xlat0.x;
  let x_701 : f32 = u_xlat0.x;
  u_xlat25 = (x_699 * x_701);
  let x_703 : f32 = u_xlat25;
  let x_704 : f32 = u_xlat25;
  u_xlat25 = (x_703 * x_704);
  let x_707 : f32 = u_xlat0.x;
  let x_708 : f32 = u_xlat25;
  u_xlat0.x = (x_707 * x_708);
  let x_711 : vec3<f32> = u_xlat4;
  let x_714 : vec3<f32> = (-(x_711) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_715 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_714.x, x_714.y, x_714.z, x_715.w);
  let x_717 : vec4<f32> = u_xlat2;
  let x_719 : vec3<f32> = u_xlat0;
  let x_722 : vec3<f32> = u_xlat4;
  let x_723 : vec3<f32> = ((vec3<f32>(x_717.x, x_717.y, x_717.z) * vec3<f32>(x_719.x, x_719.x, x_719.x)) + x_722);
  let x_724 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_723.x, x_723.y, x_723.z, x_724.w);
  let x_726 : vec3<f32> = u_xlat8;
  let x_727 : vec4<f32> = u_xlat2;
  u_xlat0 = (x_726 * vec3<f32>(x_727.x, x_727.y, x_727.z));
  let x_732 : vec3<f32> = u_xlat5;
  let x_733 : vec3<f32> = u_xlat1;
  let x_735 : vec3<f32> = u_xlat0;
  let x_736 : vec3<f32> = ((x_732 * x_733) + x_735);
  let x_737 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_736.x, x_736.y, x_736.z, x_737.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(2) vs_TEXCOORD2_param : vec3<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(3) vs_COLOR0_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_COLOR0 = vs_COLOR0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

