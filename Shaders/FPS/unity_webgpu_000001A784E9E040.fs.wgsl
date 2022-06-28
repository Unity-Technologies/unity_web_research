type Arr = array<mat4x4<f32>, 4u>;

struct PGlobals {
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding : u32,
  x_WorldSpaceLightPos0 : vec4<f32>,
  unity_OcclusionMaskSelector : vec4<f32>,
  unity_WorldToShadow : Arr,
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

@group(0) @binding(0) var<uniform> x_21 : PGlobals;

var<private> u_xlat30 : f32;

var<private> u_xlat1 : vec3<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat31 : f32;

var<private> u_xlat3 : vec3<f32>;

@group(0) @binding(1) var x_Noise : texture_2d<f32>;

@group(0) @binding(15) var sampler_Noise : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> u_xlat4 : vec4<f32>;

@group(0) @binding(2) var x_MetallicSmooth : texture_2d<f32>;

@group(0) @binding(18) var sampler_MetallicSmooth : sampler;

var<private> u_xlat32 : f32;

@group(0) @binding(3) var x_Gradient : texture_2d<f32>;

@group(0) @binding(16) var sampler_Gradient : sampler;

var<private> u_xlat33 : f32;

var<private> u_xlat5 : vec3<f32>;

@group(0) @binding(4) var x_MainTex : texture_2d<f32>;

@group(0) @binding(14) var sampler_MainTex : sampler;

var<private> u_xlat6 : vec3<f32>;

var<private> u_xlat7 : vec3<f32>;

@group(0) @binding(5) var x_Normal : texture_2d<f32>;

@group(0) @binding(17) var sampler_Normal : sampler;

var<private> u_xlatb31 : bool;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlat9 : vec4<f32>;

var<private> u_xlatb2 : bool;

var<private> u_xlat12 : vec3<f32>;

@group(0) @binding(8) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(10) var samplerunity_ProbeVolumeSH : sampler;

@group(0) @binding(9) var x_ShadowMapTexture : texture_depth_2d;

@group(0) @binding(11) var sampler_ShadowMapTexture : sampler_comparison;

var<private> u_xlat22 : f32;

@group(0) @binding(6) var x_LightTexture0 : texture_2d<f32>;

@group(0) @binding(12) var sampler_LightTexture0 : sampler;

@group(0) @binding(7) var x_LightTextureB0 : texture_2d<f32>;

@group(0) @binding(13) var sampler_LightTextureB0 : sampler;

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
  var x_365 : vec3<f32>;
  var txVec0 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_12 : vec3<f32> = vs_TEXCOORD4;
  let x_26 : vec4<f32> = x_21.x_WorldSpaceLightPos0;
  u_xlat0 = (-(x_12) + vec3<f32>(x_26.x, x_26.y, x_26.z));
  let x_31 : vec3<f32> = u_xlat0;
  let x_32 : vec3<f32> = u_xlat0;
  u_xlat30 = dot(x_31, x_32);
  let x_34 : f32 = u_xlat30;
  u_xlat30 = inverseSqrt(x_34);
  let x_37 : f32 = u_xlat30;
  let x_39 : vec3<f32> = u_xlat0;
  u_xlat1 = (vec3<f32>(x_37, x_37, x_37) * x_39);
  let x_43 : vec3<f32> = vs_TEXCOORD4;
  let x_48 : vec3<f32> = x_21.x_WorldSpaceCameraPos;
  let x_49 : vec3<f32> = (-(x_43) + x_48);
  let x_50 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_49.x, x_49.y, x_49.z, x_50.w);
  let x_53 : vec4<f32> = u_xlat2;
  let x_55 : vec4<f32> = u_xlat2;
  u_xlat31 = dot(vec3<f32>(x_53.x, x_53.y, x_53.z), vec3<f32>(x_55.x, x_55.y, x_55.z));
  let x_58 : f32 = u_xlat31;
  u_xlat31 = inverseSqrt(x_58);
  let x_61 : f32 = u_xlat31;
  let x_63 : vec4<f32> = u_xlat2;
  u_xlat3 = (vec3<f32>(x_61, x_61, x_61) * vec3<f32>(x_63.x, x_63.y, x_63.z));
  let x_79 : vec4<f32> = vs_TEXCOORD0;
  let x_81 : vec4<f32> = textureSample(x_Noise, sampler_Noise, vec2<f32>(x_79.x, x_79.y));
  u_xlat31 = x_81.x;
  let x_90 : vec4<f32> = vs_TEXCOORD0;
  let x_92 : vec4<f32> = textureSample(x_MetallicSmooth, sampler_MetallicSmooth, vec2<f32>(x_90.z, x_90.w));
  let x_93 : vec2<f32> = vec2<f32>(x_92.x, x_92.w);
  let x_94 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_93.x, x_93.y, x_94.z, x_94.w);
  let x_102 : vec4<f32> = vs_TEXCOORD0;
  let x_104 : vec4<f32> = textureSample(x_Gradient, sampler_Gradient, vec2<f32>(x_102.z, x_102.w));
  u_xlat32 = x_104.x;
  let x_107 : f32 = u_xlat32;
  u_xlat33 = (-(x_107) + 1.0f);
  let x_111 : f32 = u_xlat31;
  let x_112 : f32 = u_xlat33;
  u_xlat31 = (x_111 * x_112);
  let x_114 : f32 = u_xlat31;
  let x_118 : f32 = x_21.x_NoiseStrength;
  let x_120 : f32 = u_xlat32;
  u_xlat31 = ((x_114 * x_118) + x_120);
  let x_122 : f32 = u_xlat31;
  u_xlat31 = (-(x_122) + 1.0f);
  let x_125 : f32 = u_xlat31;
  let x_128 : f32 = x_21.x_Cutoff;
  u_xlat31 = (x_125 + -(x_128));
  let x_133 : f32 = x_21.x_EdgeSize;
  u_xlat32 = (1.0f / -(x_133));
  let x_136 : f32 = u_xlat31;
  let x_137 : f32 = u_xlat32;
  u_xlat31 = (x_136 * x_137);
  let x_139 : f32 = u_xlat31;
  u_xlat31 = clamp(x_139, 0.0f, 1.0f);
  let x_142 : f32 = u_xlat31;
  u_xlat32 = ((x_142 * -2.0f) + 3.0f);
  let x_147 : f32 = u_xlat31;
  let x_148 : f32 = u_xlat31;
  u_xlat31 = (x_147 * x_148);
  let x_156 : vec4<f32> = vs_TEXCOORD0;
  let x_158 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_156.z, x_156.w));
  u_xlat5 = vec3<f32>(x_158.x, x_158.y, x_158.z);
  let x_161 : vec3<f32> = u_xlat5;
  let x_164 : vec4<f32> = x_21.x_Color;
  u_xlat6 = (x_161 * vec3<f32>(x_164.x, x_164.y, x_164.z));
  let x_173 : vec4<f32> = vs_TEXCOORD0;
  let x_175 : vec4<f32> = textureSample(x_Normal, sampler_Normal, vec2<f32>(x_173.z, x_173.w));
  u_xlat7 = vec3<f32>(x_175.x, x_175.y, x_175.w);
  let x_179 : f32 = u_xlat7.z;
  let x_181 : f32 = u_xlat7.x;
  u_xlat7.x = (x_179 * x_181);
  let x_184 : vec3<f32> = u_xlat7;
  let x_191 : vec2<f32> = ((vec2<f32>(x_184.x, x_184.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_192 : vec3<f32> = u_xlat7;
  u_xlat7 = vec3<f32>(x_191.x, x_191.y, x_192.z);
  let x_194 : vec3<f32> = u_xlat7;
  let x_196 : vec3<f32> = u_xlat7;
  u_xlat33 = dot(vec2<f32>(x_194.x, x_194.y), vec2<f32>(x_196.x, x_196.y));
  let x_199 : f32 = u_xlat33;
  u_xlat33 = min(x_199, 1.0f);
  let x_201 : f32 = u_xlat33;
  u_xlat33 = (-(x_201) + 1.0f);
  let x_204 : f32 = u_xlat33;
  u_xlat7.z = sqrt(x_204);
  let x_208 : f32 = u_xlat4.x;
  let x_211 : f32 = x_21.x_Metallic;
  u_xlat33 = (x_208 * x_211);
  let x_213 : f32 = u_xlat32;
  let x_215 : f32 = u_xlat31;
  let x_218 : f32 = x_21.x_Cutoff;
  u_xlat31 = ((-(x_213) * x_215) + -(x_218));
  let x_221 : f32 = u_xlat31;
  u_xlat31 = (x_221 + 1.0f);
  let x_226 : f32 = u_xlat31;
  u_xlatb31 = (x_226 < 0.0f);
  let x_228 : bool = u_xlatb31;
  if (((select(0i, 1i, x_228) * -1i) != 0i)) {
    discard;
  }
  let x_237 : vec3<f32> = vs_TEXCOORD4;
  let x_241 : vec4<f32> = x_21.unity_WorldToLight[1i];
  u_xlat8 = (vec4<f32>(x_237.y, x_237.y, x_237.y, x_237.y) * x_241);
  let x_244 : vec4<f32> = x_21.unity_WorldToLight[0i];
  let x_245 : vec3<f32> = vs_TEXCOORD4;
  let x_248 : vec4<f32> = u_xlat8;
  u_xlat8 = ((x_244 * vec4<f32>(x_245.x, x_245.x, x_245.x, x_245.x)) + x_248);
  let x_252 : vec4<f32> = x_21.unity_WorldToLight[2i];
  let x_253 : vec3<f32> = vs_TEXCOORD4;
  let x_256 : vec4<f32> = u_xlat8;
  u_xlat8 = ((x_252 * vec4<f32>(x_253.z, x_253.z, x_253.z, x_253.z)) + x_256);
  let x_258 : vec4<f32> = u_xlat8;
  let x_261 : vec4<f32> = x_21.unity_WorldToLight[3i];
  u_xlat8 = (x_258 + x_261);
  let x_266 : f32 = x_21.unity_MatrixV[0i].z;
  u_xlat9.x = x_266;
  let x_269 : f32 = x_21.unity_MatrixV[1i].z;
  u_xlat9.y = x_269;
  let x_273 : f32 = x_21.unity_MatrixV[2i].z;
  u_xlat9.z = x_273;
  let x_275 : vec4<f32> = u_xlat2;
  let x_277 : vec4<f32> = u_xlat9;
  u_xlat31 = dot(vec3<f32>(x_275.x, x_275.y, x_275.z), vec3<f32>(x_277.x, x_277.y, x_277.z));
  let x_280 : vec3<f32> = vs_TEXCOORD4;
  let x_283 : vec4<f32> = x_21.unity_ShadowFadeCenterAndType;
  let x_286 : vec3<f32> = (x_280 + -(vec3<f32>(x_283.x, x_283.y, x_283.z)));
  let x_287 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_286.x, x_286.y, x_286.z, x_287.w);
  let x_289 : vec4<f32> = u_xlat2;
  let x_291 : vec4<f32> = u_xlat2;
  u_xlat2.x = dot(vec3<f32>(x_289.x, x_289.y, x_289.z), vec3<f32>(x_291.x, x_291.y, x_291.z));
  let x_296 : f32 = u_xlat2.x;
  u_xlat2.x = sqrt(x_296);
  let x_299 : f32 = u_xlat31;
  let x_302 : f32 = u_xlat2.x;
  u_xlat2.x = (-(x_299) + x_302);
  let x_307 : f32 = x_21.unity_ShadowFadeCenterAndType.w;
  let x_309 : f32 = u_xlat2.x;
  let x_311 : f32 = u_xlat31;
  u_xlat31 = ((x_307 * x_309) + x_311);
  let x_313 : f32 = u_xlat31;
  let x_316 : f32 = x_21.x_LightShadowData.z;
  let x_319 : f32 = x_21.x_LightShadowData.w;
  u_xlat31 = ((x_313 * x_316) + x_319);
  let x_321 : f32 = u_xlat31;
  u_xlat31 = clamp(x_321, 0.0f, 1.0f);
  let x_326 : f32 = x_21.unity_ProbeVolumeParams.x;
  u_xlatb2 = (x_326 == 1.0f);
  let x_328 : bool = u_xlatb2;
  if (x_328) {
    let x_332 : f32 = x_21.unity_ProbeVolumeParams.y;
    u_xlatb2 = (x_332 == 1.0f);
    let x_335 : vec3<f32> = vs_TEXCOORD4;
    let x_339 : vec4<f32> = x_21.unity_ProbeVolumeWorldToObject[1i];
    u_xlat12 = (vec3<f32>(x_335.y, x_335.y, x_335.y) * vec3<f32>(x_339.x, x_339.y, x_339.z));
    let x_343 : vec4<f32> = x_21.unity_ProbeVolumeWorldToObject[0i];
    let x_345 : vec3<f32> = vs_TEXCOORD4;
    let x_348 : vec3<f32> = u_xlat12;
    u_xlat12 = ((vec3<f32>(x_343.x, x_343.y, x_343.z) * vec3<f32>(x_345.x, x_345.x, x_345.x)) + x_348);
    let x_351 : vec4<f32> = x_21.unity_ProbeVolumeWorldToObject[2i];
    let x_353 : vec3<f32> = vs_TEXCOORD4;
    let x_356 : vec3<f32> = u_xlat12;
    u_xlat12 = ((vec3<f32>(x_351.x, x_351.y, x_351.z) * vec3<f32>(x_353.z, x_353.z, x_353.z)) + x_356);
    let x_358 : vec3<f32> = u_xlat12;
    let x_360 : vec4<f32> = x_21.unity_ProbeVolumeWorldToObject[3i];
    u_xlat12 = (x_358 + vec3<f32>(x_360.x, x_360.y, x_360.z));
    let x_363 : bool = u_xlatb2;
    if (x_363) {
      let x_368 : vec3<f32> = u_xlat12;
      x_365 = x_368;
    } else {
      let x_370 : vec3<f32> = vs_TEXCOORD4;
      x_365 = x_370;
    }
    let x_371 : vec3<f32> = x_365;
    let x_372 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_371.x, x_371.y, x_371.z, x_372.w);
    let x_374 : vec4<f32> = u_xlat2;
    let x_378 : vec3<f32> = x_21.unity_ProbeVolumeMin;
    let x_380 : vec3<f32> = (vec3<f32>(x_374.x, x_374.y, x_374.z) + -(x_378));
    let x_381 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_380.x, x_380.y, x_380.z, x_381.w);
    let x_383 : vec4<f32> = u_xlat2;
    let x_387 : vec3<f32> = x_21.unity_ProbeVolumeSizeInv;
    let x_388 : vec3<f32> = (vec3<f32>(x_383.x, x_383.y, x_383.z) * x_387);
    let x_389 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_389.x, x_388.x, x_388.y, x_388.z);
    let x_392 : f32 = u_xlat2.y;
    u_xlat12.x = ((x_392 * 0.25f) + 0.75f);
    let x_399 : f32 = x_21.unity_ProbeVolumeParams.z;
    u_xlat4.x = ((x_399 * 0.5f) + 0.75f);
    let x_405 : f32 = u_xlat12.x;
    let x_407 : f32 = u_xlat4.x;
    u_xlat2.x = max(x_405, x_407);
    let x_418 : vec4<f32> = u_xlat2;
    let x_420 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_418.x, x_418.z, x_418.w));
    u_xlat2 = x_420;
  } else {
    u_xlat2.x = 1.0f;
    u_xlat2.y = 1.0f;
    u_xlat2.z = 1.0f;
    u_xlat2.w = 1.0f;
  }
  let x_426 : vec4<f32> = u_xlat2;
  let x_428 : vec4<f32> = x_21.unity_OcclusionMaskSelector;
  u_xlat2.x = dot(x_426, x_428);
  let x_432 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_432, 0.0f, 1.0f);
  let x_435 : vec3<f32> = vs_TEXCOORD4;
  let x_438 : vec4<f32> = x_21.unity_WorldToShadow[0i][1i];
  u_xlat9 = (vec4<f32>(x_435.y, x_435.y, x_435.y, x_435.y) * x_438);
  let x_441 : vec4<f32> = x_21.unity_WorldToShadow[0i][0i];
  let x_442 : vec3<f32> = vs_TEXCOORD4;
  let x_445 : vec4<f32> = u_xlat9;
  u_xlat9 = ((x_441 * vec4<f32>(x_442.x, x_442.x, x_442.x, x_442.x)) + x_445);
  let x_448 : vec4<f32> = x_21.unity_WorldToShadow[0i][2i];
  let x_449 : vec3<f32> = vs_TEXCOORD4;
  let x_452 : vec4<f32> = u_xlat9;
  u_xlat9 = ((x_448 * vec4<f32>(x_449.z, x_449.z, x_449.z, x_449.z)) + x_452);
  let x_454 : vec4<f32> = u_xlat9;
  let x_456 : vec4<f32> = x_21.unity_WorldToShadow[0i][3i];
  u_xlat9 = (x_454 + x_456);
  let x_458 : vec4<f32> = u_xlat9;
  let x_460 : vec4<f32> = u_xlat9;
  u_xlat12 = (vec3<f32>(x_458.x, x_458.y, x_458.z) / vec3<f32>(x_460.w, x_460.w, x_460.w));
  let x_464 : vec3<f32> = u_xlat12;
  let x_465 : vec2<f32> = vec2<f32>(x_464.x, x_464.y);
  let x_467 : f32 = u_xlat12.z;
  txVec0 = vec3<f32>(x_465.x, x_465.y, x_467);
  let x_479 : vec3<f32> = txVec0;
  let x_481 : f32 = textureSampleCompareLevel(x_ShadowMapTexture, sampler_ShadowMapTexture, x_479.xy, x_479.z);
  u_xlat12.x = x_481;
  let x_485 : f32 = x_21.x_LightShadowData.x;
  u_xlat22 = (-(x_485) + 1.0f);
  let x_489 : f32 = u_xlat12.x;
  let x_490 : f32 = u_xlat22;
  let x_493 : f32 = x_21.x_LightShadowData.x;
  u_xlat12.x = ((x_489 * x_490) + x_493);
  let x_497 : f32 = u_xlat12.x;
  let x_500 : f32 = u_xlat2.x;
  u_xlat2.x = (-(x_497) + x_500);
  let x_503 : f32 = u_xlat31;
  let x_505 : f32 = u_xlat2.x;
  let x_508 : f32 = u_xlat12.x;
  u_xlat31 = ((x_503 * x_505) + x_508);
  let x_511 : f32 = u_xlat8.z;
  u_xlatb2 = (0.0f < x_511);
  let x_513 : bool = u_xlatb2;
  u_xlat2.x = select(0.0f, 1.0f, x_513);
  let x_516 : vec4<f32> = u_xlat8;
  let x_518 : vec4<f32> = u_xlat8;
  let x_520 : vec2<f32> = (vec2<f32>(x_516.x, x_516.y) / vec2<f32>(x_518.w, x_518.w));
  let x_521 : vec3<f32> = u_xlat12;
  u_xlat12 = vec3<f32>(x_520.x, x_520.y, x_521.z);
  let x_523 : vec3<f32> = u_xlat12;
  let x_526 : vec2<f32> = (vec2<f32>(x_523.x, x_523.y) + vec2<f32>(0.5f, 0.5f));
  let x_527 : vec3<f32> = u_xlat12;
  u_xlat12 = vec3<f32>(x_526.x, x_526.y, x_527.z);
  let x_534 : vec3<f32> = u_xlat12;
  let x_536 : vec4<f32> = textureSample(x_LightTexture0, sampler_LightTexture0, vec2<f32>(x_534.x, x_534.y));
  u_xlat12.x = x_536.w;
  let x_540 : f32 = u_xlat12.x;
  let x_542 : f32 = u_xlat2.x;
  u_xlat2.x = (x_540 * x_542);
  let x_545 : vec4<f32> = u_xlat8;
  let x_547 : vec4<f32> = u_xlat8;
  u_xlat12.x = dot(vec3<f32>(x_545.x, x_545.y, x_545.z), vec3<f32>(x_547.x, x_547.y, x_547.z));
  let x_556 : vec3<f32> = u_xlat12;
  let x_558 : vec4<f32> = textureSample(x_LightTextureB0, sampler_LightTextureB0, vec2<f32>(x_556.x, x_556.x));
  u_xlat12.x = x_558.x;
  let x_562 : f32 = u_xlat12.x;
  let x_564 : f32 = u_xlat2.x;
  u_xlat2.x = (x_562 * x_564);
  let x_567 : f32 = u_xlat31;
  let x_569 : f32 = u_xlat2.x;
  u_xlat31 = (x_567 * x_569);
  let x_572 : vec3<f32> = vs_TEXCOORD1;
  let x_573 : vec3<f32> = u_xlat7;
  u_xlat2.x = dot(x_572, x_573);
  let x_577 : vec3<f32> = vs_TEXCOORD2;
  let x_578 : vec3<f32> = u_xlat7;
  u_xlat2.y = dot(x_577, x_578);
  let x_582 : vec3<f32> = vs_TEXCOORD3;
  let x_583 : vec3<f32> = u_xlat7;
  u_xlat2.z = dot(x_582, x_583);
  let x_586 : vec4<f32> = u_xlat2;
  let x_588 : vec4<f32> = u_xlat2;
  u_xlat32 = dot(vec3<f32>(x_586.x, x_586.y, x_586.z), vec3<f32>(x_588.x, x_588.y, x_588.z));
  let x_591 : f32 = u_xlat32;
  u_xlat32 = inverseSqrt(x_591);
  let x_593 : f32 = u_xlat32;
  let x_595 : vec4<f32> = u_xlat2;
  let x_597 : vec3<f32> = (vec3<f32>(x_593, x_593, x_593) * vec3<f32>(x_595.x, x_595.y, x_595.z));
  let x_598 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_597.x, x_597.y, x_597.z, x_598.w);
  let x_600 : f32 = u_xlat31;
  let x_604 : vec4<f32> = x_21.x_LightColor0;
  let x_606 : vec3<f32> = (vec3<f32>(x_600, x_600, x_600) * vec3<f32>(x_604.x, x_604.y, x_604.z));
  let x_607 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_606.x, x_607.y, x_606.y, x_606.z);
  let x_609 : vec3<f32> = u_xlat5;
  let x_611 : vec4<f32> = x_21.x_Color;
  u_xlat5 = ((x_609 * vec3<f32>(x_611.x, x_611.y, x_611.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_617 : f32 = u_xlat33;
  let x_619 : vec3<f32> = u_xlat5;
  u_xlat5 = ((vec3<f32>(x_617, x_617, x_617) * x_619) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_624 : f32 = u_xlat33;
  u_xlat31 = ((-(x_624) * 0.959999979f) + 0.959999979f);
  let x_629 : f32 = u_xlat31;
  let x_631 : vec3<f32> = u_xlat6;
  u_xlat6 = (vec3<f32>(x_629, x_629, x_629) * x_631);
  let x_634 : f32 = u_xlat4.y;
  let x_638 : f32 = x_21.x_Glossiness;
  u_xlat31 = ((-(x_634) * x_638) + 1.0f);
  let x_641 : vec3<f32> = u_xlat0;
  let x_642 : f32 = u_xlat30;
  let x_645 : vec3<f32> = u_xlat3;
  u_xlat0 = ((x_641 * vec3<f32>(x_642, x_642, x_642)) + x_645);
  let x_647 : vec3<f32> = u_xlat0;
  let x_648 : vec3<f32> = u_xlat0;
  u_xlat30 = dot(x_647, x_648);
  let x_650 : f32 = u_xlat30;
  u_xlat30 = max(x_650, 0.001f);
  let x_653 : f32 = u_xlat30;
  u_xlat30 = inverseSqrt(x_653);
  let x_655 : f32 = u_xlat30;
  let x_657 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_655, x_655, x_655) * x_657);
  let x_659 : vec4<f32> = u_xlat2;
  let x_661 : vec3<f32> = u_xlat3;
  u_xlat30 = dot(vec3<f32>(x_659.x, x_659.y, x_659.z), x_661);
  let x_663 : vec4<f32> = u_xlat2;
  let x_665 : vec3<f32> = u_xlat1;
  u_xlat32 = dot(vec3<f32>(x_663.x, x_663.y, x_663.z), x_665);
  let x_667 : f32 = u_xlat32;
  u_xlat32 = clamp(x_667, 0.0f, 1.0f);
  let x_669 : vec4<f32> = u_xlat2;
  let x_671 : vec3<f32> = u_xlat0;
  u_xlat2.x = dot(vec3<f32>(x_669.x, x_669.y, x_669.z), x_671);
  let x_675 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_675, 0.0f, 1.0f);
  let x_678 : vec3<f32> = u_xlat1;
  let x_679 : vec3<f32> = u_xlat0;
  u_xlat0.x = dot(x_678, x_679);
  let x_683 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_683, 0.0f, 1.0f);
  let x_688 : f32 = u_xlat0.x;
  let x_690 : f32 = u_xlat0.x;
  u_xlat10.x = (x_688 * x_690);
  let x_693 : vec3<f32> = u_xlat10;
  let x_695 : f32 = u_xlat31;
  u_xlat10.x = dot(vec2<f32>(x_693.x, x_693.x), vec2<f32>(x_695, x_695));
  let x_700 : f32 = u_xlat10.x;
  u_xlat10.x = (x_700 + -0.5f);
  let x_705 : f32 = u_xlat32;
  u_xlat20 = (-(x_705) + 1.0f);
  let x_708 : f32 = u_xlat20;
  let x_709 : f32 = u_xlat20;
  u_xlat1.x = (x_708 * x_709);
  let x_713 : f32 = u_xlat1.x;
  let x_715 : f32 = u_xlat1.x;
  u_xlat1.x = (x_713 * x_715);
  let x_718 : f32 = u_xlat20;
  let x_720 : f32 = u_xlat1.x;
  u_xlat20 = (x_718 * x_720);
  let x_723 : f32 = u_xlat10.x;
  let x_724 : f32 = u_xlat20;
  u_xlat20 = ((x_723 * x_724) + 1.0f);
  let x_727 : f32 = u_xlat30;
  u_xlat1.x = (-(abs(x_727)) + 1.0f);
  let x_734 : f32 = u_xlat1.x;
  let x_736 : f32 = u_xlat1.x;
  u_xlat11 = (x_734 * x_736);
  let x_738 : f32 = u_xlat11;
  let x_739 : f32 = u_xlat11;
  u_xlat11 = (x_738 * x_739);
  let x_742 : f32 = u_xlat1.x;
  let x_743 : f32 = u_xlat11;
  u_xlat1.x = (x_742 * x_743);
  let x_747 : f32 = u_xlat10.x;
  let x_749 : f32 = u_xlat1.x;
  u_xlat10.x = ((x_747 * x_749) + 1.0f);
  let x_754 : f32 = u_xlat10.x;
  let x_755 : f32 = u_xlat20;
  u_xlat10.x = (x_754 * x_755);
  let x_758 : f32 = u_xlat31;
  let x_759 : f32 = u_xlat31;
  u_xlat20 = (x_758 * x_759);
  let x_761 : f32 = u_xlat20;
  u_xlat20 = max(x_761, 0.002f);
  let x_764 : f32 = u_xlat20;
  u_xlat1.x = (-(x_764) + 1.0f);
  let x_768 : f32 = u_xlat30;
  let x_771 : f32 = u_xlat1.x;
  let x_773 : f32 = u_xlat20;
  u_xlat11 = ((abs(x_768) * x_771) + x_773);
  let x_775 : f32 = u_xlat32;
  let x_777 : f32 = u_xlat1.x;
  let x_779 : f32 = u_xlat20;
  u_xlat1.x = ((x_775 * x_777) + x_779);
  let x_782 : f32 = u_xlat30;
  let x_785 : f32 = u_xlat1.x;
  u_xlat30 = (abs(x_782) * x_785);
  let x_787 : f32 = u_xlat32;
  let x_788 : f32 = u_xlat11;
  let x_790 : f32 = u_xlat30;
  u_xlat30 = ((x_787 * x_788) + x_790);
  let x_792 : f32 = u_xlat30;
  u_xlat30 = (x_792 + 0.00001f);
  let x_795 : f32 = u_xlat30;
  u_xlat30 = (0.5f / x_795);
  let x_797 : f32 = u_xlat20;
  let x_798 : f32 = u_xlat20;
  u_xlat20 = (x_797 * x_798);
  let x_801 : f32 = u_xlat2.x;
  let x_802 : f32 = u_xlat20;
  let x_805 : f32 = u_xlat2.x;
  u_xlat1.x = ((x_801 * x_802) + -(x_805));
  let x_810 : f32 = u_xlat1.x;
  let x_812 : f32 = u_xlat2.x;
  u_xlat1.x = ((x_810 * x_812) + 1.0f);
  let x_816 : f32 = u_xlat20;
  u_xlat20 = (x_816 * 0.318309873f);
  let x_820 : f32 = u_xlat1.x;
  let x_822 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_820 * x_822) + 0.0000001f);
  let x_827 : f32 = u_xlat20;
  let x_829 : f32 = u_xlat1.x;
  u_xlat20 = (x_827 / x_829);
  let x_831 : f32 = u_xlat20;
  let x_832 : f32 = u_xlat30;
  u_xlat10.y = (x_831 * x_832);
  let x_835 : f32 = u_xlat32;
  let x_837 : vec3<f32> = u_xlat10;
  let x_839 : vec2<f32> = (vec2<f32>(x_835, x_835) * vec2<f32>(x_837.x, x_837.y));
  let x_840 : vec3<f32> = u_xlat10;
  u_xlat10 = vec3<f32>(x_839.x, x_839.y, x_840.z);
  let x_843 : f32 = u_xlat10.y;
  u_xlat20 = (x_843 * 3.141592741f);
  let x_846 : f32 = u_xlat20;
  u_xlat20 = max(x_846, 0.0f);
  let x_848 : vec3<f32> = u_xlat5;
  let x_849 : vec3<f32> = u_xlat5;
  u_xlat30 = dot(x_848, x_849);
  let x_852 : f32 = u_xlat30;
  u_xlatb30 = !((x_852 == 0.0f));
  let x_854 : bool = u_xlatb30;
  u_xlat30 = select(0.0f, 1.0f, x_854);
  let x_856 : f32 = u_xlat30;
  let x_857 : f32 = u_xlat20;
  u_xlat20 = (x_856 * x_857);
  let x_859 : vec3<f32> = u_xlat10;
  let x_861 : vec4<f32> = u_xlat4;
  u_xlat1 = (vec3<f32>(x_859.x, x_859.x, x_859.x) * vec3<f32>(x_861.x, x_861.z, x_861.w));
  let x_864 : vec4<f32> = u_xlat4;
  let x_866 : f32 = u_xlat20;
  u_xlat10 = (vec3<f32>(x_864.x, x_864.z, x_864.w) * vec3<f32>(x_866, x_866, x_866));
  let x_870 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_870) + 1.0f);
  let x_875 : f32 = u_xlat0.x;
  let x_877 : f32 = u_xlat0.x;
  u_xlat31 = (x_875 * x_877);
  let x_879 : f32 = u_xlat31;
  let x_880 : f32 = u_xlat31;
  u_xlat31 = (x_879 * x_880);
  let x_883 : f32 = u_xlat0.x;
  let x_884 : f32 = u_xlat31;
  u_xlat0.x = (x_883 * x_884);
  let x_887 : vec3<f32> = u_xlat5;
  let x_890 : vec3<f32> = (-(x_887) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_891 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_890.x, x_890.y, x_890.z, x_891.w);
  let x_893 : vec4<f32> = u_xlat2;
  let x_895 : vec3<f32> = u_xlat0;
  let x_898 : vec3<f32> = u_xlat5;
  let x_899 : vec3<f32> = ((vec3<f32>(x_893.x, x_893.y, x_893.z) * vec3<f32>(x_895.x, x_895.x, x_895.x)) + x_898);
  let x_900 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_899.x, x_899.y, x_899.z, x_900.w);
  let x_902 : vec3<f32> = u_xlat10;
  let x_903 : vec4<f32> = u_xlat2;
  u_xlat0 = (x_902 * vec3<f32>(x_903.x, x_903.y, x_903.z));
  let x_908 : vec3<f32> = u_xlat6;
  let x_909 : vec3<f32> = u_xlat1;
  let x_911 : vec3<f32> = u_xlat0;
  let x_912 : vec3<f32> = ((x_908 * x_909) + x_911);
  let x_913 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_912.x, x_912.y, x_912.z, x_913.w);
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

