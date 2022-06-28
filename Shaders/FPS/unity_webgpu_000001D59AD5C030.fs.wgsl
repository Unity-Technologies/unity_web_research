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
  x_Cutoff : f32,
  x_EdgeSize : f32,
  x_NoiseStrength : f32,
  @size(12)
  padding_3 : u32,
  x_Color : vec4<f32>,
}

var<private> u_xlat0 : vec3<f32>;

var<private> vs_TEXCOORD4 : vec3<f32>;

@group(0) @binding(0) var<uniform> x_18 : PGlobals;

var<private> u_xlat30 : f32;

var<private> u_xlat1 : vec3<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat31 : f32;

var<private> u_xlat3 : vec3<f32>;

@group(0) @binding(1) var x_Noise : texture_2d<f32>;

@group(0) @binding(13) var sampler_Noise : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> u_xlat4 : vec4<f32>;

@group(0) @binding(2) var x_MetallicSmooth : texture_2d<f32>;

@group(0) @binding(16) var sampler_MetallicSmooth : sampler;

var<private> u_xlat32 : f32;

@group(0) @binding(3) var x_Gradient : texture_2d<f32>;

@group(0) @binding(14) var sampler_Gradient : sampler;

var<private> u_xlat33 : f32;

var<private> u_xlat5 : vec3<f32>;

@group(0) @binding(4) var x_MainTex : texture_2d<f32>;

@group(0) @binding(12) var sampler_MainTex : sampler;

var<private> u_xlat6 : vec3<f32>;

var<private> u_xlat7 : vec3<f32>;

@group(0) @binding(5) var x_Normal : texture_2d<f32>;

@group(0) @binding(15) var sampler_Normal : sampler;

var<private> u_xlatb31 : bool;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlatb2 : bool;

var<private> u_xlat12 : vec3<f32>;

var<private> u_xlat35 : f32;

@group(0) @binding(7) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(9) var samplerunity_ProbeVolumeSH : sampler;

var<private> u_xlatb12 : bool;

@group(0) @binding(8) var x_ShadowMapTexture : texture_depth_cube;

@group(0) @binding(10) var sampler_ShadowMapTexture : sampler_comparison;

var<private> u_xlat9 : vec3<f32>;

var<private> u_xlat22 : f32;

@group(0) @binding(6) var x_LightTexture0 : texture_2d<f32>;

@group(0) @binding(11) var sampler_LightTexture0 : sampler;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

var<private> u_xlat10 : vec3<f32>;

var<private> u_xlat20 : f32;

var<private> u_xlat11 : f32;

var<private> u_xlatb30 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_377 : vec3<f32>;
  var txVec0 : vec4<f32>;
  var txVec1 : vec4<f32>;
  var txVec2 : vec4<f32>;
  var txVec3 : vec4<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_12 : vec3<f32> = vs_TEXCOORD4;
  let x_23 : vec4<f32> = x_18.x_WorldSpaceLightPos0;
  u_xlat0 = (-(x_12) + vec3<f32>(x_23.x, x_23.y, x_23.z));
  let x_28 : vec3<f32> = u_xlat0;
  let x_29 : vec3<f32> = u_xlat0;
  u_xlat30 = dot(x_28, x_29);
  let x_31 : f32 = u_xlat30;
  u_xlat30 = inverseSqrt(x_31);
  let x_34 : f32 = u_xlat30;
  let x_36 : vec3<f32> = u_xlat0;
  u_xlat1 = (vec3<f32>(x_34, x_34, x_34) * x_36);
  let x_40 : vec3<f32> = vs_TEXCOORD4;
  let x_45 : vec3<f32> = x_18.x_WorldSpaceCameraPos;
  let x_46 : vec3<f32> = (-(x_40) + x_45);
  let x_47 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_46.x, x_46.y, x_46.z, x_47.w);
  let x_50 : vec4<f32> = u_xlat2;
  let x_52 : vec4<f32> = u_xlat2;
  u_xlat31 = dot(vec3<f32>(x_50.x, x_50.y, x_50.z), vec3<f32>(x_52.x, x_52.y, x_52.z));
  let x_55 : f32 = u_xlat31;
  u_xlat31 = inverseSqrt(x_55);
  let x_58 : f32 = u_xlat31;
  let x_60 : vec4<f32> = u_xlat2;
  u_xlat3 = (vec3<f32>(x_58, x_58, x_58) * vec3<f32>(x_60.x, x_60.y, x_60.z));
  let x_76 : vec4<f32> = vs_TEXCOORD0;
  let x_78 : vec4<f32> = textureSample(x_Noise, sampler_Noise, vec2<f32>(x_76.x, x_76.y));
  u_xlat31 = x_78.x;
  let x_88 : vec4<f32> = vs_TEXCOORD0;
  let x_90 : vec4<f32> = textureSample(x_MetallicSmooth, sampler_MetallicSmooth, vec2<f32>(x_88.z, x_88.w));
  let x_91 : vec2<f32> = vec2<f32>(x_90.x, x_90.w);
  let x_92 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_91.x, x_91.y, x_92.z, x_92.w);
  let x_100 : vec4<f32> = vs_TEXCOORD0;
  let x_102 : vec4<f32> = textureSample(x_Gradient, sampler_Gradient, vec2<f32>(x_100.z, x_100.w));
  u_xlat32 = x_102.x;
  let x_105 : f32 = u_xlat32;
  u_xlat33 = (-(x_105) + 1.0f);
  let x_109 : f32 = u_xlat31;
  let x_110 : f32 = u_xlat33;
  u_xlat31 = (x_109 * x_110);
  let x_112 : f32 = u_xlat31;
  let x_116 : f32 = x_18.x_NoiseStrength;
  let x_118 : f32 = u_xlat32;
  u_xlat31 = ((x_112 * x_116) + x_118);
  let x_120 : f32 = u_xlat31;
  u_xlat31 = (-(x_120) + 1.0f);
  let x_123 : f32 = u_xlat31;
  let x_126 : f32 = x_18.x_Cutoff;
  u_xlat31 = (x_123 + -(x_126));
  let x_131 : f32 = x_18.x_EdgeSize;
  u_xlat32 = (1.0f / -(x_131));
  let x_134 : f32 = u_xlat31;
  let x_135 : f32 = u_xlat32;
  u_xlat31 = (x_134 * x_135);
  let x_137 : f32 = u_xlat31;
  u_xlat31 = clamp(x_137, 0.0f, 1.0f);
  let x_140 : f32 = u_xlat31;
  u_xlat32 = ((x_140 * -2.0f) + 3.0f);
  let x_145 : f32 = u_xlat31;
  let x_146 : f32 = u_xlat31;
  u_xlat31 = (x_145 * x_146);
  let x_154 : vec4<f32> = vs_TEXCOORD0;
  let x_156 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_154.z, x_154.w));
  u_xlat5 = vec3<f32>(x_156.x, x_156.y, x_156.z);
  let x_159 : vec3<f32> = u_xlat5;
  let x_162 : vec4<f32> = x_18.x_Color;
  u_xlat6 = (x_159 * vec3<f32>(x_162.x, x_162.y, x_162.z));
  let x_171 : vec4<f32> = vs_TEXCOORD0;
  let x_173 : vec4<f32> = textureSample(x_Normal, sampler_Normal, vec2<f32>(x_171.z, x_171.w));
  u_xlat7 = vec3<f32>(x_173.x, x_173.y, x_173.w);
  let x_177 : f32 = u_xlat7.z;
  let x_179 : f32 = u_xlat7.x;
  u_xlat7.x = (x_177 * x_179);
  let x_182 : vec3<f32> = u_xlat7;
  let x_189 : vec2<f32> = ((vec2<f32>(x_182.x, x_182.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_190 : vec3<f32> = u_xlat7;
  u_xlat7 = vec3<f32>(x_189.x, x_189.y, x_190.z);
  let x_192 : vec3<f32> = u_xlat7;
  let x_194 : vec3<f32> = u_xlat7;
  u_xlat33 = dot(vec2<f32>(x_192.x, x_192.y), vec2<f32>(x_194.x, x_194.y));
  let x_197 : f32 = u_xlat33;
  u_xlat33 = min(x_197, 1.0f);
  let x_199 : f32 = u_xlat33;
  u_xlat33 = (-(x_199) + 1.0f);
  let x_202 : f32 = u_xlat33;
  u_xlat7.z = sqrt(x_202);
  let x_206 : f32 = u_xlat4.x;
  let x_209 : f32 = x_18.x_Metallic;
  u_xlat33 = (x_206 * x_209);
  let x_211 : f32 = u_xlat32;
  let x_213 : f32 = u_xlat31;
  let x_216 : f32 = x_18.x_Cutoff;
  u_xlat31 = ((-(x_211) * x_213) + -(x_216));
  let x_219 : f32 = u_xlat31;
  u_xlat31 = (x_219 + 1.0f);
  let x_224 : f32 = u_xlat31;
  u_xlatb31 = (x_224 < 0.0f);
  let x_226 : bool = u_xlatb31;
  if (((select(0i, 1i, x_226) * -1i) != 0i)) {
    discard;
  }
  let x_234 : vec3<f32> = vs_TEXCOORD4;
  let x_238 : vec4<f32> = x_18.unity_WorldToLight[1i];
  let x_240 : vec3<f32> = (vec3<f32>(x_234.y, x_234.y, x_234.y) * vec3<f32>(x_238.x, x_238.y, x_238.z));
  let x_241 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_240.x, x_241.y, x_240.y, x_240.z);
  let x_244 : vec4<f32> = x_18.unity_WorldToLight[0i];
  let x_246 : vec3<f32> = vs_TEXCOORD4;
  let x_249 : vec4<f32> = u_xlat4;
  let x_251 : vec3<f32> = ((vec3<f32>(x_244.x, x_244.y, x_244.z) * vec3<f32>(x_246.x, x_246.x, x_246.x)) + vec3<f32>(x_249.x, x_249.z, x_249.w));
  let x_252 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_251.x, x_252.y, x_251.y, x_251.z);
  let x_256 : vec4<f32> = x_18.unity_WorldToLight[2i];
  let x_258 : vec3<f32> = vs_TEXCOORD4;
  let x_261 : vec4<f32> = u_xlat4;
  let x_263 : vec3<f32> = ((vec3<f32>(x_256.x, x_256.y, x_256.z) * vec3<f32>(x_258.z, x_258.z, x_258.z)) + vec3<f32>(x_261.x, x_261.z, x_261.w));
  let x_264 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_263.x, x_264.y, x_263.y, x_263.z);
  let x_266 : vec4<f32> = u_xlat4;
  let x_270 : vec4<f32> = x_18.unity_WorldToLight[3i];
  let x_272 : vec3<f32> = (vec3<f32>(x_266.x, x_266.z, x_266.w) + vec3<f32>(x_270.x, x_270.y, x_270.z));
  let x_273 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_272.x, x_273.y, x_272.y, x_272.z);
  let x_278 : f32 = x_18.unity_MatrixV[0i].z;
  u_xlat8.x = x_278;
  let x_281 : f32 = x_18.unity_MatrixV[1i].z;
  u_xlat8.y = x_281;
  let x_285 : f32 = x_18.unity_MatrixV[2i].z;
  u_xlat8.z = x_285;
  let x_287 : vec4<f32> = u_xlat2;
  let x_289 : vec4<f32> = u_xlat8;
  u_xlat31 = dot(vec3<f32>(x_287.x, x_287.y, x_287.z), vec3<f32>(x_289.x, x_289.y, x_289.z));
  let x_292 : vec3<f32> = vs_TEXCOORD4;
  let x_295 : vec4<f32> = x_18.unity_ShadowFadeCenterAndType;
  let x_298 : vec3<f32> = (x_292 + -(vec3<f32>(x_295.x, x_295.y, x_295.z)));
  let x_299 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_298.x, x_298.y, x_298.z, x_299.w);
  let x_301 : vec4<f32> = u_xlat2;
  let x_303 : vec4<f32> = u_xlat2;
  u_xlat2.x = dot(vec3<f32>(x_301.x, x_301.y, x_301.z), vec3<f32>(x_303.x, x_303.y, x_303.z));
  let x_308 : f32 = u_xlat2.x;
  u_xlat2.x = sqrt(x_308);
  let x_311 : f32 = u_xlat31;
  let x_314 : f32 = u_xlat2.x;
  u_xlat2.x = (-(x_311) + x_314);
  let x_319 : f32 = x_18.unity_ShadowFadeCenterAndType.w;
  let x_321 : f32 = u_xlat2.x;
  let x_323 : f32 = u_xlat31;
  u_xlat31 = ((x_319 * x_321) + x_323);
  let x_325 : f32 = u_xlat31;
  let x_328 : f32 = x_18.x_LightShadowData.z;
  let x_331 : f32 = x_18.x_LightShadowData.w;
  u_xlat31 = ((x_325 * x_328) + x_331);
  let x_333 : f32 = u_xlat31;
  u_xlat31 = clamp(x_333, 0.0f, 1.0f);
  let x_338 : f32 = x_18.unity_ProbeVolumeParams.x;
  u_xlatb2 = (x_338 == 1.0f);
  let x_340 : bool = u_xlatb2;
  if (x_340) {
    let x_344 : f32 = x_18.unity_ProbeVolumeParams.y;
    u_xlatb2 = (x_344 == 1.0f);
    let x_347 : vec3<f32> = vs_TEXCOORD4;
    let x_351 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[1i];
    u_xlat12 = (vec3<f32>(x_347.y, x_347.y, x_347.y) * vec3<f32>(x_351.x, x_351.y, x_351.z));
    let x_355 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[0i];
    let x_357 : vec3<f32> = vs_TEXCOORD4;
    let x_360 : vec3<f32> = u_xlat12;
    u_xlat12 = ((vec3<f32>(x_355.x, x_355.y, x_355.z) * vec3<f32>(x_357.x, x_357.x, x_357.x)) + x_360);
    let x_363 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[2i];
    let x_365 : vec3<f32> = vs_TEXCOORD4;
    let x_368 : vec3<f32> = u_xlat12;
    u_xlat12 = ((vec3<f32>(x_363.x, x_363.y, x_363.z) * vec3<f32>(x_365.z, x_365.z, x_365.z)) + x_368);
    let x_370 : vec3<f32> = u_xlat12;
    let x_372 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[3i];
    u_xlat12 = (x_370 + vec3<f32>(x_372.x, x_372.y, x_372.z));
    let x_375 : bool = u_xlatb2;
    if (x_375) {
      let x_380 : vec3<f32> = u_xlat12;
      x_377 = x_380;
    } else {
      let x_382 : vec3<f32> = vs_TEXCOORD4;
      x_377 = x_382;
    }
    let x_383 : vec3<f32> = x_377;
    let x_384 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_383.x, x_383.y, x_383.z, x_384.w);
    let x_386 : vec4<f32> = u_xlat2;
    let x_390 : vec3<f32> = x_18.unity_ProbeVolumeMin;
    let x_392 : vec3<f32> = (vec3<f32>(x_386.x, x_386.y, x_386.z) + -(x_390));
    let x_393 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_392.x, x_392.y, x_392.z, x_393.w);
    let x_395 : vec4<f32> = u_xlat2;
    let x_399 : vec3<f32> = x_18.unity_ProbeVolumeSizeInv;
    let x_400 : vec3<f32> = (vec3<f32>(x_395.x, x_395.y, x_395.z) * x_399);
    let x_401 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_401.x, x_400.x, x_400.y, x_400.z);
    let x_404 : f32 = u_xlat2.y;
    u_xlat12.x = ((x_404 * 0.25f) + 0.75f);
    let x_412 : f32 = x_18.unity_ProbeVolumeParams.z;
    u_xlat35 = ((x_412 * 0.5f) + 0.75f);
    let x_417 : f32 = u_xlat12.x;
    let x_418 : f32 = u_xlat35;
    u_xlat2.x = max(x_417, x_418);
    let x_429 : vec4<f32> = u_xlat2;
    let x_431 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_429.x, x_429.z, x_429.w));
    u_xlat2 = x_431;
  } else {
    u_xlat2.x = 1.0f;
    u_xlat2.y = 1.0f;
    u_xlat2.z = 1.0f;
    u_xlat2.w = 1.0f;
  }
  let x_437 : vec4<f32> = u_xlat2;
  let x_440 : vec4<f32> = x_18.unity_OcclusionMaskSelector;
  u_xlat2.x = dot(x_437, x_440);
  let x_444 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_444, 0.0f, 1.0f);
  let x_448 : f32 = u_xlat31;
  u_xlatb12 = (x_448 < 0.99000001f);
  let x_451 : bool = u_xlatb12;
  if (x_451) {
    let x_454 : vec3<f32> = vs_TEXCOORD4;
    let x_456 : vec4<f32> = x_18.x_LightPositionRange;
    u_xlat12 = (x_454 + -(vec3<f32>(x_456.x, x_456.y, x_456.z)));
    let x_461 : f32 = u_xlat12.y;
    let x_464 : f32 = u_xlat12.x;
    u_xlat35 = max(abs(x_461), abs(x_464));
    let x_468 : f32 = u_xlat12.z;
    let x_470 : f32 = u_xlat35;
    u_xlat35 = max(abs(x_468), x_470);
    let x_472 : f32 = u_xlat35;
    let x_474 : f32 = x_18.x_LightProjectionParams.z;
    u_xlat35 = (x_472 + -(x_474));
    let x_477 : f32 = u_xlat35;
    u_xlat35 = max(x_477, 0.00001f);
    let x_480 : f32 = u_xlat35;
    let x_482 : f32 = x_18.x_LightProjectionParams.w;
    u_xlat35 = (x_480 * x_482);
    let x_485 : f32 = x_18.x_LightProjectionParams.y;
    let x_486 : f32 = u_xlat35;
    u_xlat35 = (x_485 / x_486);
    let x_488 : f32 = u_xlat35;
    let x_490 : f32 = x_18.x_LightProjectionParams.x;
    u_xlat35 = (x_488 + -(x_490));
    let x_493 : f32 = u_xlat35;
    u_xlat35 = (-(x_493) + 1.0f);
    let x_496 : vec3<f32> = u_xlat12;
    let x_499 : vec3<f32> = (x_496 + vec3<f32>(0.0078125f, 0.0078125f, 0.0078125f));
    let x_500 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_499.x, x_499.y, x_499.z, x_500.w);
    let x_504 : vec4<f32> = u_xlat8;
    let x_505 : vec3<f32> = vec3<f32>(x_504.x, x_504.y, x_504.z);
    let x_506 : f32 = u_xlat35;
    txVec0 = vec4<f32>(x_505.x, x_505.y, x_505.z, x_506);
    let x_519 : vec4<f32> = txVec0;
    let x_521 : f32 = textureSampleCompare(x_ShadowMapTexture, sampler_ShadowMapTexture, x_519.xyz, x_519.w);
    u_xlat8.x = x_521;
    let x_524 : vec3<f32> = u_xlat12;
    u_xlat9 = (x_524 + vec3<f32>(-0.0078125f, -0.0078125f, 0.0078125f));
    let x_529 : vec3<f32> = u_xlat9;
    let x_530 : f32 = u_xlat35;
    txVec1 = vec4<f32>(x_529.x, x_529.y, x_529.z, x_530);
    let x_538 : vec4<f32> = txVec1;
    let x_540 : f32 = textureSampleCompare(x_ShadowMapTexture, sampler_ShadowMapTexture, x_538.xyz, x_538.w);
    u_xlat8.y = x_540;
    let x_542 : vec3<f32> = u_xlat12;
    u_xlat9 = (x_542 + vec3<f32>(-0.0078125f, 0.0078125f, -0.0078125f));
    let x_546 : vec3<f32> = u_xlat9;
    let x_547 : f32 = u_xlat35;
    txVec2 = vec4<f32>(x_546.x, x_546.y, x_546.z, x_547);
    let x_555 : vec4<f32> = txVec2;
    let x_557 : f32 = textureSampleCompare(x_ShadowMapTexture, sampler_ShadowMapTexture, x_555.xyz, x_555.w);
    u_xlat8.z = x_557;
    let x_559 : vec3<f32> = u_xlat12;
    u_xlat12 = (x_559 + vec3<f32>(0.0078125f, -0.0078125f, -0.0078125f));
    let x_563 : vec3<f32> = u_xlat12;
    let x_564 : f32 = u_xlat35;
    txVec3 = vec4<f32>(x_563.x, x_563.y, x_563.z, x_564);
    let x_572 : vec4<f32> = txVec3;
    let x_574 : f32 = textureSampleCompare(x_ShadowMapTexture, sampler_ShadowMapTexture, x_572.xyz, x_572.w);
    u_xlat8.w = x_574;
    let x_576 : vec4<f32> = u_xlat8;
    u_xlat12.x = dot(x_576, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    let x_582 : f32 = x_18.x_LightShadowData.x;
    u_xlat22 = (-(x_582) + 1.0f);
    let x_586 : f32 = u_xlat12.x;
    let x_587 : f32 = u_xlat22;
    let x_590 : f32 = x_18.x_LightShadowData.x;
    u_xlat12.x = ((x_586 * x_587) + x_590);
  } else {
    u_xlat12.x = 1.0f;
  }
  let x_596 : f32 = u_xlat12.x;
  let x_599 : f32 = u_xlat2.x;
  u_xlat2.x = (-(x_596) + x_599);
  let x_602 : f32 = u_xlat31;
  let x_604 : f32 = u_xlat2.x;
  let x_607 : f32 = u_xlat12.x;
  u_xlat31 = ((x_602 * x_604) + x_607);
  let x_609 : vec4<f32> = u_xlat4;
  let x_611 : vec4<f32> = u_xlat4;
  u_xlat2.x = dot(vec3<f32>(x_609.x, x_609.z, x_609.w), vec3<f32>(x_611.x, x_611.z, x_611.w));
  let x_620 : vec4<f32> = u_xlat2;
  let x_622 : vec4<f32> = textureSample(x_LightTexture0, sampler_LightTexture0, vec2<f32>(x_620.x, x_620.x));
  u_xlat2.x = x_622.x;
  let x_625 : f32 = u_xlat31;
  let x_627 : f32 = u_xlat2.x;
  u_xlat31 = (x_625 * x_627);
  let x_630 : vec3<f32> = vs_TEXCOORD1;
  let x_631 : vec3<f32> = u_xlat7;
  u_xlat2.x = dot(x_630, x_631);
  let x_635 : vec3<f32> = vs_TEXCOORD2;
  let x_636 : vec3<f32> = u_xlat7;
  u_xlat2.y = dot(x_635, x_636);
  let x_640 : vec3<f32> = vs_TEXCOORD3;
  let x_641 : vec3<f32> = u_xlat7;
  u_xlat2.z = dot(x_640, x_641);
  let x_644 : vec4<f32> = u_xlat2;
  let x_646 : vec4<f32> = u_xlat2;
  u_xlat32 = dot(vec3<f32>(x_644.x, x_644.y, x_644.z), vec3<f32>(x_646.x, x_646.y, x_646.z));
  let x_649 : f32 = u_xlat32;
  u_xlat32 = inverseSqrt(x_649);
  let x_651 : f32 = u_xlat32;
  let x_653 : vec4<f32> = u_xlat2;
  let x_655 : vec3<f32> = (vec3<f32>(x_651, x_651, x_651) * vec3<f32>(x_653.x, x_653.y, x_653.z));
  let x_656 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_655.x, x_655.y, x_655.z, x_656.w);
  let x_658 : f32 = u_xlat31;
  let x_662 : vec4<f32> = x_18.x_LightColor0;
  let x_664 : vec3<f32> = (vec3<f32>(x_658, x_658, x_658) * vec3<f32>(x_662.x, x_662.y, x_662.z));
  let x_665 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_664.x, x_665.y, x_664.y, x_664.z);
  let x_667 : vec3<f32> = u_xlat5;
  let x_669 : vec4<f32> = x_18.x_Color;
  u_xlat5 = ((x_667 * vec3<f32>(x_669.x, x_669.y, x_669.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_675 : f32 = u_xlat33;
  let x_677 : vec3<f32> = u_xlat5;
  u_xlat5 = ((vec3<f32>(x_675, x_675, x_675) * x_677) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_682 : f32 = u_xlat33;
  u_xlat31 = ((-(x_682) * 0.959999979f) + 0.959999979f);
  let x_687 : f32 = u_xlat31;
  let x_689 : vec3<f32> = u_xlat6;
  u_xlat6 = (vec3<f32>(x_687, x_687, x_687) * x_689);
  let x_692 : f32 = u_xlat4.y;
  let x_696 : f32 = x_18.x_Glossiness;
  u_xlat31 = ((-(x_692) * x_696) + 1.0f);
  let x_699 : vec3<f32> = u_xlat0;
  let x_700 : f32 = u_xlat30;
  let x_703 : vec3<f32> = u_xlat3;
  u_xlat0 = ((x_699 * vec3<f32>(x_700, x_700, x_700)) + x_703);
  let x_705 : vec3<f32> = u_xlat0;
  let x_706 : vec3<f32> = u_xlat0;
  u_xlat30 = dot(x_705, x_706);
  let x_708 : f32 = u_xlat30;
  u_xlat30 = max(x_708, 0.001f);
  let x_711 : f32 = u_xlat30;
  u_xlat30 = inverseSqrt(x_711);
  let x_713 : f32 = u_xlat30;
  let x_715 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_713, x_713, x_713) * x_715);
  let x_717 : vec4<f32> = u_xlat2;
  let x_719 : vec3<f32> = u_xlat3;
  u_xlat30 = dot(vec3<f32>(x_717.x, x_717.y, x_717.z), x_719);
  let x_721 : vec4<f32> = u_xlat2;
  let x_723 : vec3<f32> = u_xlat1;
  u_xlat32 = dot(vec3<f32>(x_721.x, x_721.y, x_721.z), x_723);
  let x_725 : f32 = u_xlat32;
  u_xlat32 = clamp(x_725, 0.0f, 1.0f);
  let x_727 : vec4<f32> = u_xlat2;
  let x_729 : vec3<f32> = u_xlat0;
  u_xlat2.x = dot(vec3<f32>(x_727.x, x_727.y, x_727.z), x_729);
  let x_733 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_733, 0.0f, 1.0f);
  let x_736 : vec3<f32> = u_xlat1;
  let x_737 : vec3<f32> = u_xlat0;
  u_xlat0.x = dot(x_736, x_737);
  let x_741 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_741, 0.0f, 1.0f);
  let x_746 : f32 = u_xlat0.x;
  let x_748 : f32 = u_xlat0.x;
  u_xlat10.x = (x_746 * x_748);
  let x_751 : vec3<f32> = u_xlat10;
  let x_753 : f32 = u_xlat31;
  u_xlat10.x = dot(vec2<f32>(x_751.x, x_751.x), vec2<f32>(x_753, x_753));
  let x_758 : f32 = u_xlat10.x;
  u_xlat10.x = (x_758 + -0.5f);
  let x_763 : f32 = u_xlat32;
  u_xlat20 = (-(x_763) + 1.0f);
  let x_766 : f32 = u_xlat20;
  let x_767 : f32 = u_xlat20;
  u_xlat1.x = (x_766 * x_767);
  let x_771 : f32 = u_xlat1.x;
  let x_773 : f32 = u_xlat1.x;
  u_xlat1.x = (x_771 * x_773);
  let x_776 : f32 = u_xlat20;
  let x_778 : f32 = u_xlat1.x;
  u_xlat20 = (x_776 * x_778);
  let x_781 : f32 = u_xlat10.x;
  let x_782 : f32 = u_xlat20;
  u_xlat20 = ((x_781 * x_782) + 1.0f);
  let x_785 : f32 = u_xlat30;
  u_xlat1.x = (-(abs(x_785)) + 1.0f);
  let x_792 : f32 = u_xlat1.x;
  let x_794 : f32 = u_xlat1.x;
  u_xlat11 = (x_792 * x_794);
  let x_796 : f32 = u_xlat11;
  let x_797 : f32 = u_xlat11;
  u_xlat11 = (x_796 * x_797);
  let x_800 : f32 = u_xlat1.x;
  let x_801 : f32 = u_xlat11;
  u_xlat1.x = (x_800 * x_801);
  let x_805 : f32 = u_xlat10.x;
  let x_807 : f32 = u_xlat1.x;
  u_xlat10.x = ((x_805 * x_807) + 1.0f);
  let x_812 : f32 = u_xlat10.x;
  let x_813 : f32 = u_xlat20;
  u_xlat10.x = (x_812 * x_813);
  let x_816 : f32 = u_xlat31;
  let x_817 : f32 = u_xlat31;
  u_xlat20 = (x_816 * x_817);
  let x_819 : f32 = u_xlat20;
  u_xlat20 = max(x_819, 0.002f);
  let x_822 : f32 = u_xlat20;
  u_xlat1.x = (-(x_822) + 1.0f);
  let x_826 : f32 = u_xlat30;
  let x_829 : f32 = u_xlat1.x;
  let x_831 : f32 = u_xlat20;
  u_xlat11 = ((abs(x_826) * x_829) + x_831);
  let x_833 : f32 = u_xlat32;
  let x_835 : f32 = u_xlat1.x;
  let x_837 : f32 = u_xlat20;
  u_xlat1.x = ((x_833 * x_835) + x_837);
  let x_840 : f32 = u_xlat30;
  let x_843 : f32 = u_xlat1.x;
  u_xlat30 = (abs(x_840) * x_843);
  let x_845 : f32 = u_xlat32;
  let x_846 : f32 = u_xlat11;
  let x_848 : f32 = u_xlat30;
  u_xlat30 = ((x_845 * x_846) + x_848);
  let x_850 : f32 = u_xlat30;
  u_xlat30 = (x_850 + 0.00001f);
  let x_852 : f32 = u_xlat30;
  u_xlat30 = (0.5f / x_852);
  let x_854 : f32 = u_xlat20;
  let x_855 : f32 = u_xlat20;
  u_xlat20 = (x_854 * x_855);
  let x_858 : f32 = u_xlat2.x;
  let x_859 : f32 = u_xlat20;
  let x_862 : f32 = u_xlat2.x;
  u_xlat1.x = ((x_858 * x_859) + -(x_862));
  let x_867 : f32 = u_xlat1.x;
  let x_869 : f32 = u_xlat2.x;
  u_xlat1.x = ((x_867 * x_869) + 1.0f);
  let x_873 : f32 = u_xlat20;
  u_xlat20 = (x_873 * 0.318309873f);
  let x_877 : f32 = u_xlat1.x;
  let x_879 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_877 * x_879) + 0.0000001f);
  let x_884 : f32 = u_xlat20;
  let x_886 : f32 = u_xlat1.x;
  u_xlat20 = (x_884 / x_886);
  let x_888 : f32 = u_xlat20;
  let x_889 : f32 = u_xlat30;
  u_xlat10.y = (x_888 * x_889);
  let x_892 : f32 = u_xlat32;
  let x_894 : vec3<f32> = u_xlat10;
  let x_896 : vec2<f32> = (vec2<f32>(x_892, x_892) * vec2<f32>(x_894.x, x_894.y));
  let x_897 : vec3<f32> = u_xlat10;
  u_xlat10 = vec3<f32>(x_896.x, x_896.y, x_897.z);
  let x_900 : f32 = u_xlat10.y;
  u_xlat20 = (x_900 * 3.141592741f);
  let x_903 : f32 = u_xlat20;
  u_xlat20 = max(x_903, 0.0f);
  let x_905 : vec3<f32> = u_xlat5;
  let x_906 : vec3<f32> = u_xlat5;
  u_xlat30 = dot(x_905, x_906);
  let x_909 : f32 = u_xlat30;
  u_xlatb30 = !((x_909 == 0.0f));
  let x_911 : bool = u_xlatb30;
  u_xlat30 = select(0.0f, 1.0f, x_911);
  let x_913 : f32 = u_xlat30;
  let x_914 : f32 = u_xlat20;
  u_xlat20 = (x_913 * x_914);
  let x_916 : vec3<f32> = u_xlat10;
  let x_918 : vec4<f32> = u_xlat4;
  u_xlat1 = (vec3<f32>(x_916.x, x_916.x, x_916.x) * vec3<f32>(x_918.x, x_918.z, x_918.w));
  let x_921 : vec4<f32> = u_xlat4;
  let x_923 : f32 = u_xlat20;
  u_xlat10 = (vec3<f32>(x_921.x, x_921.z, x_921.w) * vec3<f32>(x_923, x_923, x_923));
  let x_927 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_927) + 1.0f);
  let x_932 : f32 = u_xlat0.x;
  let x_934 : f32 = u_xlat0.x;
  u_xlat31 = (x_932 * x_934);
  let x_936 : f32 = u_xlat31;
  let x_937 : f32 = u_xlat31;
  u_xlat31 = (x_936 * x_937);
  let x_940 : f32 = u_xlat0.x;
  let x_941 : f32 = u_xlat31;
  u_xlat0.x = (x_940 * x_941);
  let x_944 : vec3<f32> = u_xlat5;
  let x_947 : vec3<f32> = (-(x_944) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_948 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_947.x, x_947.y, x_947.z, x_948.w);
  let x_950 : vec4<f32> = u_xlat2;
  let x_952 : vec3<f32> = u_xlat0;
  let x_955 : vec3<f32> = u_xlat5;
  let x_956 : vec3<f32> = ((vec3<f32>(x_950.x, x_950.y, x_950.z) * vec3<f32>(x_952.x, x_952.x, x_952.x)) + x_955);
  let x_957 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_956.x, x_956.y, x_956.z, x_957.w);
  let x_959 : vec3<f32> = u_xlat10;
  let x_960 : vec4<f32> = u_xlat2;
  u_xlat0 = (x_959 * vec3<f32>(x_960.x, x_960.y, x_960.z));
  let x_965 : vec3<f32> = u_xlat6;
  let x_966 : vec3<f32> = u_xlat1;
  let x_968 : vec3<f32> = u_xlat0;
  let x_969 : vec3<f32> = ((x_965 * x_966) + x_968);
  let x_970 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_969.x, x_969.y, x_969.z, x_970.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(4) vs_TEXCOORD4_param : vec3<f32>, @location(0) vs_TEXCOORD0_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(3) vs_TEXCOORD3_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

