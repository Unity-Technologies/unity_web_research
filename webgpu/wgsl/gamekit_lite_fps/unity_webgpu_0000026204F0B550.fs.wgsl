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

@group(0) @binding(14) var sampler_Noise : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> u_xlat4 : vec4<f32>;

@group(0) @binding(2) var x_MetallicSmooth : texture_2d<f32>;

@group(0) @binding(16) var sampler_MetallicSmooth : sampler;

var<private> u_xlat32 : f32;

var<private> u_xlat5 : vec3<f32>;

@group(0) @binding(3) var x_MainTex : texture_2d<f32>;

@group(0) @binding(13) var sampler_MainTex : sampler;

var<private> u_xlat6 : vec3<f32>;

var<private> u_xlat7 : vec3<f32>;

@group(0) @binding(4) var x_Normal : texture_2d<f32>;

@group(0) @binding(15) var sampler_Normal : sampler;

var<private> u_xlat33 : f32;

var<private> u_xlatb31 : bool;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlat9 : vec4<f32>;

var<private> u_xlatb2 : bool;

var<private> u_xlat12 : vec3<f32>;

@group(0) @binding(7) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(9) var samplerunity_ProbeVolumeSH : sampler;

@group(0) @binding(8) var x_ShadowMapTexture : texture_depth_2d;

@group(0) @binding(10) var sampler_ShadowMapTexture : sampler_comparison;

var<private> u_xlat22 : f32;

@group(0) @binding(5) var x_LightTexture0 : texture_2d<f32>;

@group(0) @binding(11) var sampler_LightTexture0 : sampler;

@group(0) @binding(6) var x_LightTextureB0 : texture_2d<f32>;

@group(0) @binding(12) var sampler_LightTextureB0 : sampler;

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
  var x_343 : vec3<f32>;
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
  let x_96 : f32 = u_xlat31;
  u_xlat31 = (-(x_96) + 1.0f);
  let x_100 : f32 = u_xlat31;
  let x_104 : f32 = x_21.x_Cutoff;
  u_xlat31 = (x_100 + -(x_104));
  let x_110 : f32 = x_21.x_EdgeSize;
  u_xlat32 = (1.0f / -(x_110));
  let x_113 : f32 = u_xlat31;
  let x_114 : f32 = u_xlat32;
  u_xlat31 = (x_113 * x_114);
  let x_116 : f32 = u_xlat31;
  u_xlat31 = clamp(x_116, 0.0f, 1.0f);
  let x_119 : f32 = u_xlat31;
  u_xlat32 = ((x_119 * -2.0f) + 3.0f);
  let x_124 : f32 = u_xlat31;
  let x_125 : f32 = u_xlat31;
  u_xlat31 = (x_124 * x_125);
  let x_133 : vec4<f32> = vs_TEXCOORD0;
  let x_135 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_133.z, x_133.w));
  u_xlat5 = vec3<f32>(x_135.x, x_135.y, x_135.z);
  let x_138 : vec3<f32> = u_xlat5;
  let x_141 : vec4<f32> = x_21.x_Color;
  u_xlat6 = (x_138 * vec3<f32>(x_141.x, x_141.y, x_141.z));
  let x_150 : vec4<f32> = vs_TEXCOORD0;
  let x_152 : vec4<f32> = textureSample(x_Normal, sampler_Normal, vec2<f32>(x_150.z, x_150.w));
  u_xlat7 = vec3<f32>(x_152.x, x_152.y, x_152.w);
  let x_156 : f32 = u_xlat7.z;
  let x_158 : f32 = u_xlat7.x;
  u_xlat7.x = (x_156 * x_158);
  let x_161 : vec3<f32> = u_xlat7;
  let x_168 : vec2<f32> = ((vec2<f32>(x_161.x, x_161.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_169 : vec3<f32> = u_xlat7;
  u_xlat7 = vec3<f32>(x_168.x, x_168.y, x_169.z);
  let x_172 : vec3<f32> = u_xlat7;
  let x_174 : vec3<f32> = u_xlat7;
  u_xlat33 = dot(vec2<f32>(x_172.x, x_172.y), vec2<f32>(x_174.x, x_174.y));
  let x_177 : f32 = u_xlat33;
  u_xlat33 = min(x_177, 1.0f);
  let x_179 : f32 = u_xlat33;
  u_xlat33 = (-(x_179) + 1.0f);
  let x_182 : f32 = u_xlat33;
  u_xlat7.z = sqrt(x_182);
  let x_186 : f32 = u_xlat4.x;
  let x_189 : f32 = x_21.x_Metallic;
  u_xlat33 = (x_186 * x_189);
  let x_191 : f32 = u_xlat32;
  let x_193 : f32 = u_xlat31;
  let x_196 : f32 = x_21.x_Cutoff;
  u_xlat31 = ((-(x_191) * x_193) + -(x_196));
  let x_199 : f32 = u_xlat31;
  u_xlat31 = (x_199 + 1.0f);
  let x_204 : f32 = u_xlat31;
  u_xlatb31 = (x_204 < 0.0f);
  let x_206 : bool = u_xlatb31;
  if (((select(0i, 1i, x_206) * -1i) != 0i)) {
    discard;
  }
  let x_215 : vec3<f32> = vs_TEXCOORD4;
  let x_219 : vec4<f32> = x_21.unity_WorldToLight[1i];
  u_xlat8 = (vec4<f32>(x_215.y, x_215.y, x_215.y, x_215.y) * x_219);
  let x_222 : vec4<f32> = x_21.unity_WorldToLight[0i];
  let x_223 : vec3<f32> = vs_TEXCOORD4;
  let x_226 : vec4<f32> = u_xlat8;
  u_xlat8 = ((x_222 * vec4<f32>(x_223.x, x_223.x, x_223.x, x_223.x)) + x_226);
  let x_230 : vec4<f32> = x_21.unity_WorldToLight[2i];
  let x_231 : vec3<f32> = vs_TEXCOORD4;
  let x_234 : vec4<f32> = u_xlat8;
  u_xlat8 = ((x_230 * vec4<f32>(x_231.z, x_231.z, x_231.z, x_231.z)) + x_234);
  let x_236 : vec4<f32> = u_xlat8;
  let x_239 : vec4<f32> = x_21.unity_WorldToLight[3i];
  u_xlat8 = (x_236 + x_239);
  let x_244 : f32 = x_21.unity_MatrixV[0i].z;
  u_xlat9.x = x_244;
  let x_247 : f32 = x_21.unity_MatrixV[1i].z;
  u_xlat9.y = x_247;
  let x_251 : f32 = x_21.unity_MatrixV[2i].z;
  u_xlat9.z = x_251;
  let x_253 : vec4<f32> = u_xlat2;
  let x_255 : vec4<f32> = u_xlat9;
  u_xlat31 = dot(vec3<f32>(x_253.x, x_253.y, x_253.z), vec3<f32>(x_255.x, x_255.y, x_255.z));
  let x_258 : vec3<f32> = vs_TEXCOORD4;
  let x_261 : vec4<f32> = x_21.unity_ShadowFadeCenterAndType;
  let x_264 : vec3<f32> = (x_258 + -(vec3<f32>(x_261.x, x_261.y, x_261.z)));
  let x_265 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_264.x, x_264.y, x_264.z, x_265.w);
  let x_267 : vec4<f32> = u_xlat2;
  let x_269 : vec4<f32> = u_xlat2;
  u_xlat2.x = dot(vec3<f32>(x_267.x, x_267.y, x_267.z), vec3<f32>(x_269.x, x_269.y, x_269.z));
  let x_274 : f32 = u_xlat2.x;
  u_xlat2.x = sqrt(x_274);
  let x_277 : f32 = u_xlat31;
  let x_280 : f32 = u_xlat2.x;
  u_xlat2.x = (-(x_277) + x_280);
  let x_285 : f32 = x_21.unity_ShadowFadeCenterAndType.w;
  let x_287 : f32 = u_xlat2.x;
  let x_289 : f32 = u_xlat31;
  u_xlat31 = ((x_285 * x_287) + x_289);
  let x_291 : f32 = u_xlat31;
  let x_294 : f32 = x_21.x_LightShadowData.z;
  let x_297 : f32 = x_21.x_LightShadowData.w;
  u_xlat31 = ((x_291 * x_294) + x_297);
  let x_299 : f32 = u_xlat31;
  u_xlat31 = clamp(x_299, 0.0f, 1.0f);
  let x_304 : f32 = x_21.unity_ProbeVolumeParams.x;
  u_xlatb2 = (x_304 == 1.0f);
  let x_306 : bool = u_xlatb2;
  if (x_306) {
    let x_310 : f32 = x_21.unity_ProbeVolumeParams.y;
    u_xlatb2 = (x_310 == 1.0f);
    let x_313 : vec3<f32> = vs_TEXCOORD4;
    let x_317 : vec4<f32> = x_21.unity_ProbeVolumeWorldToObject[1i];
    u_xlat12 = (vec3<f32>(x_313.y, x_313.y, x_313.y) * vec3<f32>(x_317.x, x_317.y, x_317.z));
    let x_321 : vec4<f32> = x_21.unity_ProbeVolumeWorldToObject[0i];
    let x_323 : vec3<f32> = vs_TEXCOORD4;
    let x_326 : vec3<f32> = u_xlat12;
    u_xlat12 = ((vec3<f32>(x_321.x, x_321.y, x_321.z) * vec3<f32>(x_323.x, x_323.x, x_323.x)) + x_326);
    let x_329 : vec4<f32> = x_21.unity_ProbeVolumeWorldToObject[2i];
    let x_331 : vec3<f32> = vs_TEXCOORD4;
    let x_334 : vec3<f32> = u_xlat12;
    u_xlat12 = ((vec3<f32>(x_329.x, x_329.y, x_329.z) * vec3<f32>(x_331.z, x_331.z, x_331.z)) + x_334);
    let x_336 : vec3<f32> = u_xlat12;
    let x_338 : vec4<f32> = x_21.unity_ProbeVolumeWorldToObject[3i];
    u_xlat12 = (x_336 + vec3<f32>(x_338.x, x_338.y, x_338.z));
    let x_341 : bool = u_xlatb2;
    if (x_341) {
      let x_346 : vec3<f32> = u_xlat12;
      x_343 = x_346;
    } else {
      let x_348 : vec3<f32> = vs_TEXCOORD4;
      x_343 = x_348;
    }
    let x_349 : vec3<f32> = x_343;
    let x_350 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_349.x, x_349.y, x_349.z, x_350.w);
    let x_352 : vec4<f32> = u_xlat2;
    let x_356 : vec3<f32> = x_21.unity_ProbeVolumeMin;
    let x_358 : vec3<f32> = (vec3<f32>(x_352.x, x_352.y, x_352.z) + -(x_356));
    let x_359 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_358.x, x_358.y, x_358.z, x_359.w);
    let x_361 : vec4<f32> = u_xlat2;
    let x_365 : vec3<f32> = x_21.unity_ProbeVolumeSizeInv;
    let x_366 : vec3<f32> = (vec3<f32>(x_361.x, x_361.y, x_361.z) * x_365);
    let x_367 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_367.x, x_366.x, x_366.y, x_366.z);
    let x_370 : f32 = u_xlat2.y;
    u_xlat12.x = ((x_370 * 0.25f) + 0.75f);
    let x_377 : f32 = x_21.unity_ProbeVolumeParams.z;
    u_xlat4.x = ((x_377 * 0.5f) + 0.75f);
    let x_383 : f32 = u_xlat12.x;
    let x_385 : f32 = u_xlat4.x;
    u_xlat2.x = max(x_383, x_385);
    let x_396 : vec4<f32> = u_xlat2;
    let x_398 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_396.x, x_396.z, x_396.w));
    u_xlat2 = x_398;
  } else {
    u_xlat2.x = 1.0f;
    u_xlat2.y = 1.0f;
    u_xlat2.z = 1.0f;
    u_xlat2.w = 1.0f;
  }
  let x_404 : vec4<f32> = u_xlat2;
  let x_406 : vec4<f32> = x_21.unity_OcclusionMaskSelector;
  u_xlat2.x = dot(x_404, x_406);
  let x_410 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_410, 0.0f, 1.0f);
  let x_413 : vec3<f32> = vs_TEXCOORD4;
  let x_416 : vec4<f32> = x_21.unity_WorldToShadow[0i][1i];
  u_xlat9 = (vec4<f32>(x_413.y, x_413.y, x_413.y, x_413.y) * x_416);
  let x_419 : vec4<f32> = x_21.unity_WorldToShadow[0i][0i];
  let x_420 : vec3<f32> = vs_TEXCOORD4;
  let x_423 : vec4<f32> = u_xlat9;
  u_xlat9 = ((x_419 * vec4<f32>(x_420.x, x_420.x, x_420.x, x_420.x)) + x_423);
  let x_426 : vec4<f32> = x_21.unity_WorldToShadow[0i][2i];
  let x_427 : vec3<f32> = vs_TEXCOORD4;
  let x_430 : vec4<f32> = u_xlat9;
  u_xlat9 = ((x_426 * vec4<f32>(x_427.z, x_427.z, x_427.z, x_427.z)) + x_430);
  let x_432 : vec4<f32> = u_xlat9;
  let x_434 : vec4<f32> = x_21.unity_WorldToShadow[0i][3i];
  u_xlat9 = (x_432 + x_434);
  let x_436 : vec4<f32> = u_xlat9;
  let x_438 : vec4<f32> = u_xlat9;
  u_xlat12 = (vec3<f32>(x_436.x, x_436.y, x_436.z) / vec3<f32>(x_438.w, x_438.w, x_438.w));
  let x_442 : vec3<f32> = u_xlat12;
  let x_443 : vec2<f32> = vec2<f32>(x_442.x, x_442.y);
  let x_445 : f32 = u_xlat12.z;
  txVec0 = vec3<f32>(x_443.x, x_443.y, x_445);
  let x_457 : vec3<f32> = txVec0;
  let x_459 : f32 = textureSampleCompareLevel(x_ShadowMapTexture, sampler_ShadowMapTexture, x_457.xy, x_457.z);
  u_xlat12.x = x_459;
  let x_463 : f32 = x_21.x_LightShadowData.x;
  u_xlat22 = (-(x_463) + 1.0f);
  let x_467 : f32 = u_xlat12.x;
  let x_468 : f32 = u_xlat22;
  let x_471 : f32 = x_21.x_LightShadowData.x;
  u_xlat12.x = ((x_467 * x_468) + x_471);
  let x_475 : f32 = u_xlat12.x;
  let x_478 : f32 = u_xlat2.x;
  u_xlat2.x = (-(x_475) + x_478);
  let x_481 : f32 = u_xlat31;
  let x_483 : f32 = u_xlat2.x;
  let x_486 : f32 = u_xlat12.x;
  u_xlat31 = ((x_481 * x_483) + x_486);
  let x_489 : f32 = u_xlat8.z;
  u_xlatb2 = (0.0f < x_489);
  let x_491 : bool = u_xlatb2;
  u_xlat2.x = select(0.0f, 1.0f, x_491);
  let x_494 : vec4<f32> = u_xlat8;
  let x_496 : vec4<f32> = u_xlat8;
  let x_498 : vec2<f32> = (vec2<f32>(x_494.x, x_494.y) / vec2<f32>(x_496.w, x_496.w));
  let x_499 : vec3<f32> = u_xlat12;
  u_xlat12 = vec3<f32>(x_498.x, x_498.y, x_499.z);
  let x_501 : vec3<f32> = u_xlat12;
  let x_504 : vec2<f32> = (vec2<f32>(x_501.x, x_501.y) + vec2<f32>(0.5f, 0.5f));
  let x_505 : vec3<f32> = u_xlat12;
  u_xlat12 = vec3<f32>(x_504.x, x_504.y, x_505.z);
  let x_512 : vec3<f32> = u_xlat12;
  let x_514 : vec4<f32> = textureSample(x_LightTexture0, sampler_LightTexture0, vec2<f32>(x_512.x, x_512.y));
  u_xlat12.x = x_514.w;
  let x_518 : f32 = u_xlat12.x;
  let x_520 : f32 = u_xlat2.x;
  u_xlat2.x = (x_518 * x_520);
  let x_523 : vec4<f32> = u_xlat8;
  let x_525 : vec4<f32> = u_xlat8;
  u_xlat12.x = dot(vec3<f32>(x_523.x, x_523.y, x_523.z), vec3<f32>(x_525.x, x_525.y, x_525.z));
  let x_534 : vec3<f32> = u_xlat12;
  let x_536 : vec4<f32> = textureSample(x_LightTextureB0, sampler_LightTextureB0, vec2<f32>(x_534.x, x_534.x));
  u_xlat12.x = x_536.x;
  let x_540 : f32 = u_xlat12.x;
  let x_542 : f32 = u_xlat2.x;
  u_xlat2.x = (x_540 * x_542);
  let x_545 : f32 = u_xlat31;
  let x_547 : f32 = u_xlat2.x;
  u_xlat31 = (x_545 * x_547);
  let x_550 : vec3<f32> = vs_TEXCOORD1;
  let x_551 : vec3<f32> = u_xlat7;
  u_xlat2.x = dot(x_550, x_551);
  let x_555 : vec3<f32> = vs_TEXCOORD2;
  let x_556 : vec3<f32> = u_xlat7;
  u_xlat2.y = dot(x_555, x_556);
  let x_560 : vec3<f32> = vs_TEXCOORD3;
  let x_561 : vec3<f32> = u_xlat7;
  u_xlat2.z = dot(x_560, x_561);
  let x_564 : vec4<f32> = u_xlat2;
  let x_566 : vec4<f32> = u_xlat2;
  u_xlat32 = dot(vec3<f32>(x_564.x, x_564.y, x_564.z), vec3<f32>(x_566.x, x_566.y, x_566.z));
  let x_569 : f32 = u_xlat32;
  u_xlat32 = inverseSqrt(x_569);
  let x_571 : f32 = u_xlat32;
  let x_573 : vec4<f32> = u_xlat2;
  let x_575 : vec3<f32> = (vec3<f32>(x_571, x_571, x_571) * vec3<f32>(x_573.x, x_573.y, x_573.z));
  let x_576 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_575.x, x_575.y, x_575.z, x_576.w);
  let x_578 : f32 = u_xlat31;
  let x_582 : vec4<f32> = x_21.x_LightColor0;
  let x_584 : vec3<f32> = (vec3<f32>(x_578, x_578, x_578) * vec3<f32>(x_582.x, x_582.y, x_582.z));
  let x_585 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_584.x, x_585.y, x_584.y, x_584.z);
  let x_587 : vec3<f32> = u_xlat5;
  let x_589 : vec4<f32> = x_21.x_Color;
  u_xlat5 = ((x_587 * vec3<f32>(x_589.x, x_589.y, x_589.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_595 : f32 = u_xlat33;
  let x_597 : vec3<f32> = u_xlat5;
  u_xlat5 = ((vec3<f32>(x_595, x_595, x_595) * x_597) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_602 : f32 = u_xlat33;
  u_xlat31 = ((-(x_602) * 0.959999979f) + 0.959999979f);
  let x_607 : f32 = u_xlat31;
  let x_609 : vec3<f32> = u_xlat6;
  u_xlat6 = (vec3<f32>(x_607, x_607, x_607) * x_609);
  let x_612 : f32 = u_xlat4.y;
  let x_616 : f32 = x_21.x_Glossiness;
  u_xlat31 = ((-(x_612) * x_616) + 1.0f);
  let x_619 : vec3<f32> = u_xlat0;
  let x_620 : f32 = u_xlat30;
  let x_623 : vec3<f32> = u_xlat3;
  u_xlat0 = ((x_619 * vec3<f32>(x_620, x_620, x_620)) + x_623);
  let x_625 : vec3<f32> = u_xlat0;
  let x_626 : vec3<f32> = u_xlat0;
  u_xlat30 = dot(x_625, x_626);
  let x_628 : f32 = u_xlat30;
  u_xlat30 = max(x_628, 0.001f);
  let x_631 : f32 = u_xlat30;
  u_xlat30 = inverseSqrt(x_631);
  let x_633 : f32 = u_xlat30;
  let x_635 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_633, x_633, x_633) * x_635);
  let x_637 : vec4<f32> = u_xlat2;
  let x_639 : vec3<f32> = u_xlat3;
  u_xlat30 = dot(vec3<f32>(x_637.x, x_637.y, x_637.z), x_639);
  let x_641 : vec4<f32> = u_xlat2;
  let x_643 : vec3<f32> = u_xlat1;
  u_xlat32 = dot(vec3<f32>(x_641.x, x_641.y, x_641.z), x_643);
  let x_645 : f32 = u_xlat32;
  u_xlat32 = clamp(x_645, 0.0f, 1.0f);
  let x_647 : vec4<f32> = u_xlat2;
  let x_649 : vec3<f32> = u_xlat0;
  u_xlat2.x = dot(vec3<f32>(x_647.x, x_647.y, x_647.z), x_649);
  let x_653 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_653, 0.0f, 1.0f);
  let x_656 : vec3<f32> = u_xlat1;
  let x_657 : vec3<f32> = u_xlat0;
  u_xlat0.x = dot(x_656, x_657);
  let x_661 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_661, 0.0f, 1.0f);
  let x_666 : f32 = u_xlat0.x;
  let x_668 : f32 = u_xlat0.x;
  u_xlat10.x = (x_666 * x_668);
  let x_671 : vec3<f32> = u_xlat10;
  let x_673 : f32 = u_xlat31;
  u_xlat10.x = dot(vec2<f32>(x_671.x, x_671.x), vec2<f32>(x_673, x_673));
  let x_678 : f32 = u_xlat10.x;
  u_xlat10.x = (x_678 + -0.5f);
  let x_683 : f32 = u_xlat32;
  u_xlat20 = (-(x_683) + 1.0f);
  let x_686 : f32 = u_xlat20;
  let x_687 : f32 = u_xlat20;
  u_xlat1.x = (x_686 * x_687);
  let x_691 : f32 = u_xlat1.x;
  let x_693 : f32 = u_xlat1.x;
  u_xlat1.x = (x_691 * x_693);
  let x_696 : f32 = u_xlat20;
  let x_698 : f32 = u_xlat1.x;
  u_xlat20 = (x_696 * x_698);
  let x_701 : f32 = u_xlat10.x;
  let x_702 : f32 = u_xlat20;
  u_xlat20 = ((x_701 * x_702) + 1.0f);
  let x_705 : f32 = u_xlat30;
  u_xlat1.x = (-(abs(x_705)) + 1.0f);
  let x_712 : f32 = u_xlat1.x;
  let x_714 : f32 = u_xlat1.x;
  u_xlat11 = (x_712 * x_714);
  let x_716 : f32 = u_xlat11;
  let x_717 : f32 = u_xlat11;
  u_xlat11 = (x_716 * x_717);
  let x_720 : f32 = u_xlat1.x;
  let x_721 : f32 = u_xlat11;
  u_xlat1.x = (x_720 * x_721);
  let x_725 : f32 = u_xlat10.x;
  let x_727 : f32 = u_xlat1.x;
  u_xlat10.x = ((x_725 * x_727) + 1.0f);
  let x_732 : f32 = u_xlat10.x;
  let x_733 : f32 = u_xlat20;
  u_xlat10.x = (x_732 * x_733);
  let x_736 : f32 = u_xlat31;
  let x_737 : f32 = u_xlat31;
  u_xlat20 = (x_736 * x_737);
  let x_739 : f32 = u_xlat20;
  u_xlat20 = max(x_739, 0.002f);
  let x_742 : f32 = u_xlat20;
  u_xlat1.x = (-(x_742) + 1.0f);
  let x_746 : f32 = u_xlat30;
  let x_749 : f32 = u_xlat1.x;
  let x_751 : f32 = u_xlat20;
  u_xlat11 = ((abs(x_746) * x_749) + x_751);
  let x_753 : f32 = u_xlat32;
  let x_755 : f32 = u_xlat1.x;
  let x_757 : f32 = u_xlat20;
  u_xlat1.x = ((x_753 * x_755) + x_757);
  let x_760 : f32 = u_xlat30;
  let x_763 : f32 = u_xlat1.x;
  u_xlat30 = (abs(x_760) * x_763);
  let x_765 : f32 = u_xlat32;
  let x_766 : f32 = u_xlat11;
  let x_768 : f32 = u_xlat30;
  u_xlat30 = ((x_765 * x_766) + x_768);
  let x_770 : f32 = u_xlat30;
  u_xlat30 = (x_770 + 0.00001f);
  let x_773 : f32 = u_xlat30;
  u_xlat30 = (0.5f / x_773);
  let x_775 : f32 = u_xlat20;
  let x_776 : f32 = u_xlat20;
  u_xlat20 = (x_775 * x_776);
  let x_779 : f32 = u_xlat2.x;
  let x_780 : f32 = u_xlat20;
  let x_783 : f32 = u_xlat2.x;
  u_xlat1.x = ((x_779 * x_780) + -(x_783));
  let x_788 : f32 = u_xlat1.x;
  let x_790 : f32 = u_xlat2.x;
  u_xlat1.x = ((x_788 * x_790) + 1.0f);
  let x_794 : f32 = u_xlat20;
  u_xlat20 = (x_794 * 0.318309873f);
  let x_798 : f32 = u_xlat1.x;
  let x_800 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_798 * x_800) + 0.0000001f);
  let x_805 : f32 = u_xlat20;
  let x_807 : f32 = u_xlat1.x;
  u_xlat20 = (x_805 / x_807);
  let x_809 : f32 = u_xlat20;
  let x_810 : f32 = u_xlat30;
  u_xlat10.y = (x_809 * x_810);
  let x_813 : f32 = u_xlat32;
  let x_815 : vec3<f32> = u_xlat10;
  let x_817 : vec2<f32> = (vec2<f32>(x_813, x_813) * vec2<f32>(x_815.x, x_815.y));
  let x_818 : vec3<f32> = u_xlat10;
  u_xlat10 = vec3<f32>(x_817.x, x_817.y, x_818.z);
  let x_821 : f32 = u_xlat10.y;
  u_xlat20 = (x_821 * 3.141592741f);
  let x_824 : f32 = u_xlat20;
  u_xlat20 = max(x_824, 0.0f);
  let x_826 : vec3<f32> = u_xlat5;
  let x_827 : vec3<f32> = u_xlat5;
  u_xlat30 = dot(x_826, x_827);
  let x_830 : f32 = u_xlat30;
  u_xlatb30 = !((x_830 == 0.0f));
  let x_832 : bool = u_xlatb30;
  u_xlat30 = select(0.0f, 1.0f, x_832);
  let x_834 : f32 = u_xlat30;
  let x_835 : f32 = u_xlat20;
  u_xlat20 = (x_834 * x_835);
  let x_837 : vec3<f32> = u_xlat10;
  let x_839 : vec4<f32> = u_xlat4;
  u_xlat1 = (vec3<f32>(x_837.x, x_837.x, x_837.x) * vec3<f32>(x_839.x, x_839.z, x_839.w));
  let x_842 : vec4<f32> = u_xlat4;
  let x_844 : f32 = u_xlat20;
  u_xlat10 = (vec3<f32>(x_842.x, x_842.z, x_842.w) * vec3<f32>(x_844, x_844, x_844));
  let x_848 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_848) + 1.0f);
  let x_853 : f32 = u_xlat0.x;
  let x_855 : f32 = u_xlat0.x;
  u_xlat31 = (x_853 * x_855);
  let x_857 : f32 = u_xlat31;
  let x_858 : f32 = u_xlat31;
  u_xlat31 = (x_857 * x_858);
  let x_861 : f32 = u_xlat0.x;
  let x_862 : f32 = u_xlat31;
  u_xlat0.x = (x_861 * x_862);
  let x_865 : vec3<f32> = u_xlat5;
  let x_868 : vec3<f32> = (-(x_865) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_869 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_868.x, x_868.y, x_868.z, x_869.w);
  let x_871 : vec4<f32> = u_xlat2;
  let x_873 : vec3<f32> = u_xlat0;
  let x_876 : vec3<f32> = u_xlat5;
  let x_877 : vec3<f32> = ((vec3<f32>(x_871.x, x_871.y, x_871.z) * vec3<f32>(x_873.x, x_873.x, x_873.x)) + x_876);
  let x_878 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_877.x, x_877.y, x_877.z, x_878.w);
  let x_880 : vec3<f32> = u_xlat10;
  let x_881 : vec4<f32> = u_xlat2;
  u_xlat0 = (x_880 * vec3<f32>(x_881.x, x_881.y, x_881.z));
  let x_886 : vec3<f32> = u_xlat6;
  let x_887 : vec3<f32> = u_xlat1;
  let x_889 : vec3<f32> = u_xlat0;
  let x_890 : vec3<f32> = ((x_886 * x_887) + x_889);
  let x_891 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_890.x, x_890.y, x_890.z, x_891.w);
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

