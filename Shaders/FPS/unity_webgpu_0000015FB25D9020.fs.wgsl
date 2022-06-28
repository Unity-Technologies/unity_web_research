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
  unity_ObjectToWorld : mat4x4<f32>,
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
  x_Cutoff2 : f32,
  x_EdgeSizeBot : f32,
  x_EdgeSizeTop : f32,
  @size(8)
  padding_3 : u32,
  x_Color : vec4<f32>,
  x_bounds : vec4<f32>,
}

var<private> u_xlat0 : vec3<f32>;

var<private> vs_TEXCOORD4 : vec3<f32>;

@group(0) @binding(0) var<uniform> x_18 : PGlobals;

var<private> u_xlat33 : f32;

var<private> u_xlat1 : vec3<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat34 : f32;

var<private> u_xlat3 : vec3<f32>;

var<private> u_xlat4 : vec2<f32>;

@group(0) @binding(1) var x_MetallicSmooth : texture_2d<f32>;

@group(0) @binding(16) var sampler_MetallicSmooth : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> u_xlat5 : vec3<f32>;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlat7 : vec3<f32>;

var<private> u_xlat35 : f32;

@group(0) @binding(2) var x_Noise : texture_2d<f32>;

@group(0) @binding(14) var sampler_Noise : sampler;

var<private> u_xlat36 : f32;

var<private> u_xlatb36 : bool;

var<private> u_xlat26 : f32;

var<private> u_xlat37 : f32;

@group(0) @binding(3) var x_MainTex : texture_2d<f32>;

@group(0) @binding(13) var sampler_MainTex : sampler;

@group(0) @binding(4) var x_Normal : texture_2d<f32>;

@group(0) @binding(15) var sampler_Normal : sampler;

var<private> u_xlat38 : f32;

var<private> u_xlatb34 : bool;

var<private> u_xlat8 : vec3<f32>;

var<private> u_xlat9 : vec4<f32>;

var<private> u_xlatb2 : bool;

var<private> u_xlat13 : vec3<f32>;

@group(0) @binding(7) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(9) var samplerunity_ProbeVolumeSH : sampler;

var<private> u_xlatb13 : bool;

@group(0) @binding(8) var x_ShadowMapTexture : texture_depth_cube;

@group(0) @binding(10) var sampler_ShadowMapTexture : sampler_comparison;

var<private> u_xlat10 : vec3<f32>;

var<private> u_xlat24 : f32;

@group(0) @binding(5) var x_LightTextureB0 : texture_2d<f32>;

@group(0) @binding(12) var sampler_LightTextureB0 : sampler;

@group(0) @binding(6) var x_LightTexture0 : texture_cube<f32>;

@group(0) @binding(11) var sampler_LightTexture0 : sampler;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

var<private> u_xlat11 : vec3<f32>;

var<private> u_xlat22 : f32;

var<private> u_xlat12 : f32;

var<private> u_xlatb33 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_476 : vec3<f32>;
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
  u_xlat33 = dot(x_28, x_29);
  let x_31 : f32 = u_xlat33;
  u_xlat33 = inverseSqrt(x_31);
  let x_34 : f32 = u_xlat33;
  let x_36 : vec3<f32> = u_xlat0;
  u_xlat1 = (vec3<f32>(x_34, x_34, x_34) * x_36);
  let x_40 : vec3<f32> = vs_TEXCOORD4;
  let x_45 : vec3<f32> = x_18.x_WorldSpaceCameraPos;
  let x_46 : vec3<f32> = (-(x_40) + x_45);
  let x_47 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_46.x, x_46.y, x_46.z, x_47.w);
  let x_50 : vec4<f32> = u_xlat2;
  let x_52 : vec4<f32> = u_xlat2;
  u_xlat34 = dot(vec3<f32>(x_50.x, x_50.y, x_50.z), vec3<f32>(x_52.x, x_52.y, x_52.z));
  let x_55 : f32 = u_xlat34;
  u_xlat34 = inverseSqrt(x_55);
  let x_58 : f32 = u_xlat34;
  let x_60 : vec4<f32> = u_xlat2;
  u_xlat3 = (vec3<f32>(x_58, x_58, x_58) * vec3<f32>(x_60.x, x_60.y, x_60.z));
  let x_78 : vec2<f32> = vs_TEXCOORD0;
  let x_79 : vec4<f32> = textureSample(x_MetallicSmooth, sampler_MetallicSmooth, x_78);
  u_xlat4 = vec2<f32>(x_79.x, x_79.w);
  let x_82 : vec3<f32> = vs_TEXCOORD4;
  let x_87 : vec4<f32> = x_18.unity_ObjectToWorld[3i];
  u_xlat5 = (vec3<f32>(x_82.z, x_82.y, x_82.x) + -(vec3<f32>(x_87.z, x_87.y, x_87.x)));
  let x_92 : vec3<f32> = u_xlat5;
  let x_96 : vec2<f32> = (vec2<f32>(x_92.x, x_92.z) * vec2<f32>(0.200000003f, 0.200000003f));
  let x_97 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_97.x, x_96.x, x_97.z, x_96.y);
  let x_102 : f32 = x_18.x_Cutoff;
  let x_104 : f32 = x_18.x_Cutoff;
  u_xlat34 = (x_102 + x_104);
  let x_109 : f32 = u_xlat5.y;
  let x_112 : f32 = u_xlat34;
  u_xlat6.x = ((x_109 * 2.0f) + x_112);
  let x_118 : f32 = u_xlat5.y;
  let x_122 : f32 = x_18.x_Cutoff;
  u_xlat7.x = ((x_118 * 4.0f) + x_122);
  let x_127 : f32 = x_18.x_bounds.y;
  u_xlat34 = (x_127 + 0.200000003f);
  let x_135 : vec4<f32> = u_xlat6;
  let x_137 : vec4<f32> = textureSample(x_Noise, sampler_Noise, vec2<f32>(x_135.x, x_135.y));
  u_xlat35 = x_137.x;
  let x_141 : f32 = u_xlat6.w;
  u_xlat7.y = x_141;
  let x_147 : vec3<f32> = u_xlat7;
  let x_149 : vec4<f32> = textureSample(x_Noise, sampler_Noise, vec2<f32>(x_147.x, x_147.y));
  u_xlat36 = x_149.x;
  let x_151 : f32 = u_xlat35;
  let x_153 : f32 = u_xlat36;
  u_xlat35 = dot(vec2<f32>(x_151, x_151), vec2<f32>(x_153, x_153));
  let x_156 : f32 = u_xlat34;
  u_xlat36 = (x_156 * 0.5f);
  let x_160 : f32 = x_18.x_Cutoff;
  let x_161 : f32 = u_xlat34;
  let x_163 : f32 = u_xlat36;
  u_xlat34 = ((x_160 * x_161) + -(x_163));
  let x_170 : f32 = u_xlat5.y;
  let x_171 : f32 = u_xlat34;
  u_xlatb36 = (x_170 >= x_171);
  let x_174 : f32 = u_xlat34;
  let x_177 : f32 = x_18.x_EdgeSizeBot;
  u_xlat26 = (x_174 + -(x_177));
  let x_181 : f32 = u_xlat34;
  let x_182 : f32 = u_xlat26;
  u_xlat37 = (x_181 + -(x_182));
  let x_185 : f32 = u_xlat26;
  let x_188 : f32 = u_xlat5.y;
  u_xlat26 = (-(x_185) + x_188);
  let x_191 : f32 = u_xlat37;
  u_xlat37 = (1.0f / x_191);
  let x_193 : f32 = u_xlat37;
  let x_194 : f32 = u_xlat26;
  u_xlat26 = (x_193 * x_194);
  let x_196 : f32 = u_xlat26;
  u_xlat26 = clamp(x_196, 0.0f, 1.0f);
  let x_199 : f32 = u_xlat26;
  u_xlat37 = ((x_199 * -2.0f) + 3.0f);
  let x_204 : f32 = u_xlat26;
  let x_205 : f32 = u_xlat26;
  u_xlat26 = (x_204 * x_205);
  let x_207 : f32 = u_xlat34;
  let x_210 : f32 = x_18.x_EdgeSizeTop;
  u_xlat5.x = (x_207 + x_210);
  let x_213 : f32 = u_xlat34;
  let x_215 : f32 = u_xlat5.x;
  u_xlat34 = (x_213 + -(x_215));
  let x_219 : f32 = u_xlat5.x;
  let x_222 : f32 = u_xlat5.y;
  u_xlat5.x = (-(x_219) + x_222);
  let x_225 : f32 = u_xlat34;
  u_xlat34 = (1.0f / x_225);
  let x_227 : f32 = u_xlat34;
  let x_229 : f32 = u_xlat5.x;
  u_xlat34 = (x_227 * x_229);
  let x_231 : f32 = u_xlat34;
  u_xlat34 = clamp(x_231, 0.0f, 1.0f);
  let x_233 : f32 = u_xlat34;
  u_xlat5.x = ((x_233 * -2.0f) + 3.0f);
  let x_237 : f32 = u_xlat34;
  let x_238 : f32 = u_xlat34;
  u_xlat34 = (x_237 * x_238);
  let x_240 : f32 = u_xlat34;
  let x_242 : f32 = u_xlat5.x;
  u_xlat34 = (x_240 * x_242);
  let x_249 : vec2<f32> = vs_TEXCOORD0;
  let x_250 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_249);
  u_xlat5 = vec3<f32>(x_250.x, x_250.y, x_250.z);
  let x_252 : vec3<f32> = u_xlat5;
  let x_255 : vec4<f32> = x_18.x_Color;
  let x_257 : vec3<f32> = (x_252 * vec3<f32>(x_255.x, x_255.y, x_255.z));
  let x_258 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_257.x, x_257.y, x_257.z, x_258.w);
  let x_265 : vec2<f32> = vs_TEXCOORD0;
  let x_266 : vec4<f32> = textureSample(x_Normal, sampler_Normal, x_265);
  u_xlat7 = vec3<f32>(x_266.x, x_266.y, x_266.w);
  let x_270 : f32 = u_xlat7.z;
  let x_272 : f32 = u_xlat7.x;
  u_xlat7.x = (x_270 * x_272);
  let x_275 : vec3<f32> = u_xlat7;
  let x_281 : vec2<f32> = ((vec2<f32>(x_275.x, x_275.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_282 : vec3<f32> = u_xlat7;
  u_xlat7 = vec3<f32>(x_281.x, x_281.y, x_282.z);
  let x_285 : vec3<f32> = u_xlat7;
  let x_287 : vec3<f32> = u_xlat7;
  u_xlat38 = dot(vec2<f32>(x_285.x, x_285.y), vec2<f32>(x_287.x, x_287.y));
  let x_290 : f32 = u_xlat38;
  u_xlat38 = min(x_290, 1.0f);
  let x_292 : f32 = u_xlat38;
  u_xlat38 = (-(x_292) + 1.0f);
  let x_295 : f32 = u_xlat38;
  u_xlat7.z = sqrt(x_295);
  let x_298 : vec2<f32> = u_xlat4;
  let x_301 : f32 = x_18.x_Metallic;
  let x_304 : f32 = x_18.x_Glossiness;
  u_xlat4 = (x_298 * vec2<f32>(x_301, x_304));
  let x_307 : f32 = u_xlat37;
  let x_309 : f32 = u_xlat26;
  u_xlat26 = ((-(x_307) * x_309) + 1.0f);
  let x_312 : f32 = u_xlat26;
  let x_314 : f32 = u_xlat4.x;
  u_xlat4.x = (x_312 * x_314);
  let x_317 : bool = u_xlatb36;
  u_xlat36 = select(1.0f, 0.0f, x_317);
  let x_319 : f32 = u_xlat35;
  let x_320 : f32 = u_xlat34;
  let x_322 : f32 = u_xlat36;
  u_xlat34 = ((x_319 * x_320) + x_322);
  let x_324 : f32 = u_xlat34;
  let x_326 : f32 = x_18.x_Cutoff;
  u_xlat34 = (x_324 + -(x_326));
  let x_329 : f32 = u_xlat34;
  let x_332 : f32 = x_18.x_Cutoff2;
  u_xlat34 = (x_329 + -(x_332));
  let x_336 : f32 = u_xlat34;
  u_xlatb34 = (x_336 < 0.0f);
  let x_338 : bool = u_xlatb34;
  if (((select(0i, 1i, x_338) * -1i) != 0i)) {
    discard;
  }
  let x_347 : vec3<f32> = vs_TEXCOORD4;
  let x_351 : vec4<f32> = x_18.unity_WorldToLight[1i];
  u_xlat8 = (vec3<f32>(x_347.y, x_347.y, x_347.y) * vec3<f32>(x_351.x, x_351.y, x_351.z));
  let x_355 : vec4<f32> = x_18.unity_WorldToLight[0i];
  let x_357 : vec3<f32> = vs_TEXCOORD4;
  let x_360 : vec3<f32> = u_xlat8;
  u_xlat8 = ((vec3<f32>(x_355.x, x_355.y, x_355.z) * vec3<f32>(x_357.x, x_357.x, x_357.x)) + x_360);
  let x_364 : vec4<f32> = x_18.unity_WorldToLight[2i];
  let x_366 : vec3<f32> = vs_TEXCOORD4;
  let x_369 : vec3<f32> = u_xlat8;
  u_xlat8 = ((vec3<f32>(x_364.x, x_364.y, x_364.z) * vec3<f32>(x_366.z, x_366.z, x_366.z)) + x_369);
  let x_371 : vec3<f32> = u_xlat8;
  let x_373 : vec4<f32> = x_18.unity_WorldToLight[3i];
  u_xlat8 = (x_371 + vec3<f32>(x_373.x, x_373.y, x_373.z));
  let x_379 : f32 = x_18.unity_MatrixV[0i].z;
  u_xlat9.x = x_379;
  let x_382 : f32 = x_18.unity_MatrixV[1i].z;
  u_xlat9.y = x_382;
  let x_385 : f32 = x_18.unity_MatrixV[2i].z;
  u_xlat9.z = x_385;
  let x_387 : vec4<f32> = u_xlat2;
  let x_389 : vec4<f32> = u_xlat9;
  u_xlat34 = dot(vec3<f32>(x_387.x, x_387.y, x_387.z), vec3<f32>(x_389.x, x_389.y, x_389.z));
  let x_392 : vec3<f32> = vs_TEXCOORD4;
  let x_395 : vec4<f32> = x_18.unity_ShadowFadeCenterAndType;
  let x_398 : vec3<f32> = (x_392 + -(vec3<f32>(x_395.x, x_395.y, x_395.z)));
  let x_399 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_398.x, x_398.y, x_398.z, x_399.w);
  let x_401 : vec4<f32> = u_xlat2;
  let x_403 : vec4<f32> = u_xlat2;
  u_xlat2.x = dot(vec3<f32>(x_401.x, x_401.y, x_401.z), vec3<f32>(x_403.x, x_403.y, x_403.z));
  let x_408 : f32 = u_xlat2.x;
  u_xlat2.x = sqrt(x_408);
  let x_411 : f32 = u_xlat34;
  let x_414 : f32 = u_xlat2.x;
  u_xlat2.x = (-(x_411) + x_414);
  let x_418 : f32 = x_18.unity_ShadowFadeCenterAndType.w;
  let x_420 : f32 = u_xlat2.x;
  let x_422 : f32 = u_xlat34;
  u_xlat34 = ((x_418 * x_420) + x_422);
  let x_424 : f32 = u_xlat34;
  let x_427 : f32 = x_18.x_LightShadowData.z;
  let x_430 : f32 = x_18.x_LightShadowData.w;
  u_xlat34 = ((x_424 * x_427) + x_430);
  let x_432 : f32 = u_xlat34;
  u_xlat34 = clamp(x_432, 0.0f, 1.0f);
  let x_437 : f32 = x_18.unity_ProbeVolumeParams.x;
  u_xlatb2 = (x_437 == 1.0f);
  let x_439 : bool = u_xlatb2;
  if (x_439) {
    let x_443 : f32 = x_18.unity_ProbeVolumeParams.y;
    u_xlatb2 = (x_443 == 1.0f);
    let x_446 : vec3<f32> = vs_TEXCOORD4;
    let x_450 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[1i];
    u_xlat13 = (vec3<f32>(x_446.y, x_446.y, x_446.y) * vec3<f32>(x_450.x, x_450.y, x_450.z));
    let x_454 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[0i];
    let x_456 : vec3<f32> = vs_TEXCOORD4;
    let x_459 : vec3<f32> = u_xlat13;
    u_xlat13 = ((vec3<f32>(x_454.x, x_454.y, x_454.z) * vec3<f32>(x_456.x, x_456.x, x_456.x)) + x_459);
    let x_462 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[2i];
    let x_464 : vec3<f32> = vs_TEXCOORD4;
    let x_467 : vec3<f32> = u_xlat13;
    u_xlat13 = ((vec3<f32>(x_462.x, x_462.y, x_462.z) * vec3<f32>(x_464.z, x_464.z, x_464.z)) + x_467);
    let x_469 : vec3<f32> = u_xlat13;
    let x_471 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[3i];
    u_xlat13 = (x_469 + vec3<f32>(x_471.x, x_471.y, x_471.z));
    let x_474 : bool = u_xlatb2;
    if (x_474) {
      let x_479 : vec3<f32> = u_xlat13;
      x_476 = x_479;
    } else {
      let x_481 : vec3<f32> = vs_TEXCOORD4;
      x_476 = x_481;
    }
    let x_482 : vec3<f32> = x_476;
    let x_483 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_482.x, x_482.y, x_482.z, x_483.w);
    let x_485 : vec4<f32> = u_xlat2;
    let x_489 : vec3<f32> = x_18.unity_ProbeVolumeMin;
    let x_491 : vec3<f32> = (vec3<f32>(x_485.x, x_485.y, x_485.z) + -(x_489));
    let x_492 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_491.x, x_491.y, x_491.z, x_492.w);
    let x_494 : vec4<f32> = u_xlat2;
    let x_498 : vec3<f32> = x_18.unity_ProbeVolumeSizeInv;
    let x_499 : vec3<f32> = (vec3<f32>(x_494.x, x_494.y, x_494.z) * x_498);
    let x_500 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_500.x, x_499.x, x_499.y, x_499.z);
    let x_503 : f32 = u_xlat2.y;
    u_xlat13.x = ((x_503 * 0.25f) + 0.75f);
    let x_510 : f32 = x_18.unity_ProbeVolumeParams.z;
    u_xlat36 = ((x_510 * 0.5f) + 0.75f);
    let x_514 : f32 = u_xlat13.x;
    let x_515 : f32 = u_xlat36;
    u_xlat2.x = max(x_514, x_515);
    let x_526 : vec4<f32> = u_xlat2;
    let x_528 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_526.x, x_526.z, x_526.w));
    u_xlat2 = x_528;
  } else {
    u_xlat2.x = 1.0f;
    u_xlat2.y = 1.0f;
    u_xlat2.z = 1.0f;
    u_xlat2.w = 1.0f;
  }
  let x_534 : vec4<f32> = u_xlat2;
  let x_537 : vec4<f32> = x_18.unity_OcclusionMaskSelector;
  u_xlat2.x = dot(x_534, x_537);
  let x_541 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_541, 0.0f, 1.0f);
  let x_545 : f32 = u_xlat34;
  u_xlatb13 = (x_545 < 0.99000001f);
  let x_548 : bool = u_xlatb13;
  if (x_548) {
    let x_551 : vec3<f32> = vs_TEXCOORD4;
    let x_553 : vec4<f32> = x_18.x_LightPositionRange;
    u_xlat13 = (x_551 + -(vec3<f32>(x_553.x, x_553.y, x_553.z)));
    let x_558 : f32 = u_xlat13.y;
    let x_561 : f32 = u_xlat13.x;
    u_xlat36 = max(abs(x_558), abs(x_561));
    let x_565 : f32 = u_xlat13.z;
    let x_567 : f32 = u_xlat36;
    u_xlat36 = max(abs(x_565), x_567);
    let x_569 : f32 = u_xlat36;
    let x_571 : f32 = x_18.x_LightProjectionParams.z;
    u_xlat36 = (x_569 + -(x_571));
    let x_574 : f32 = u_xlat36;
    u_xlat36 = max(x_574, 0.00001f);
    let x_577 : f32 = u_xlat36;
    let x_579 : f32 = x_18.x_LightProjectionParams.w;
    u_xlat36 = (x_577 * x_579);
    let x_582 : f32 = x_18.x_LightProjectionParams.y;
    let x_583 : f32 = u_xlat36;
    u_xlat36 = (x_582 / x_583);
    let x_585 : f32 = u_xlat36;
    let x_587 : f32 = x_18.x_LightProjectionParams.x;
    u_xlat36 = (x_585 + -(x_587));
    let x_590 : f32 = u_xlat36;
    u_xlat36 = (-(x_590) + 1.0f);
    let x_593 : vec3<f32> = u_xlat13;
    let x_596 : vec3<f32> = (x_593 + vec3<f32>(0.0078125f, 0.0078125f, 0.0078125f));
    let x_597 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_596.x, x_596.y, x_596.z, x_597.w);
    let x_601 : vec4<f32> = u_xlat9;
    let x_602 : vec3<f32> = vec3<f32>(x_601.x, x_601.y, x_601.z);
    let x_603 : f32 = u_xlat36;
    txVec0 = vec4<f32>(x_602.x, x_602.y, x_602.z, x_603);
    let x_616 : vec4<f32> = txVec0;
    let x_618 : f32 = textureSampleCompare(x_ShadowMapTexture, sampler_ShadowMapTexture, x_616.xyz, x_616.w);
    u_xlat9.x = x_618;
    let x_621 : vec3<f32> = u_xlat13;
    u_xlat10 = (x_621 + vec3<f32>(-0.0078125f, -0.0078125f, 0.0078125f));
    let x_626 : vec3<f32> = u_xlat10;
    let x_627 : f32 = u_xlat36;
    txVec1 = vec4<f32>(x_626.x, x_626.y, x_626.z, x_627);
    let x_635 : vec4<f32> = txVec1;
    let x_637 : f32 = textureSampleCompare(x_ShadowMapTexture, sampler_ShadowMapTexture, x_635.xyz, x_635.w);
    u_xlat9.y = x_637;
    let x_639 : vec3<f32> = u_xlat13;
    u_xlat10 = (x_639 + vec3<f32>(-0.0078125f, 0.0078125f, -0.0078125f));
    let x_643 : vec3<f32> = u_xlat10;
    let x_644 : f32 = u_xlat36;
    txVec2 = vec4<f32>(x_643.x, x_643.y, x_643.z, x_644);
    let x_652 : vec4<f32> = txVec2;
    let x_654 : f32 = textureSampleCompare(x_ShadowMapTexture, sampler_ShadowMapTexture, x_652.xyz, x_652.w);
    u_xlat9.z = x_654;
    let x_656 : vec3<f32> = u_xlat13;
    u_xlat13 = (x_656 + vec3<f32>(0.0078125f, -0.0078125f, -0.0078125f));
    let x_660 : vec3<f32> = u_xlat13;
    let x_661 : f32 = u_xlat36;
    txVec3 = vec4<f32>(x_660.x, x_660.y, x_660.z, x_661);
    let x_669 : vec4<f32> = txVec3;
    let x_671 : f32 = textureSampleCompare(x_ShadowMapTexture, sampler_ShadowMapTexture, x_669.xyz, x_669.w);
    u_xlat9.w = x_671;
    let x_673 : vec4<f32> = u_xlat9;
    u_xlat13.x = dot(x_673, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    let x_679 : f32 = x_18.x_LightShadowData.x;
    u_xlat24 = (-(x_679) + 1.0f);
    let x_683 : f32 = u_xlat13.x;
    let x_684 : f32 = u_xlat24;
    let x_687 : f32 = x_18.x_LightShadowData.x;
    u_xlat13.x = ((x_683 * x_684) + x_687);
  } else {
    u_xlat13.x = 1.0f;
  }
  let x_693 : f32 = u_xlat13.x;
  let x_696 : f32 = u_xlat2.x;
  u_xlat2.x = (-(x_693) + x_696);
  let x_699 : f32 = u_xlat34;
  let x_701 : f32 = u_xlat2.x;
  let x_704 : f32 = u_xlat13.x;
  u_xlat34 = ((x_699 * x_701) + x_704);
  let x_706 : vec3<f32> = u_xlat8;
  let x_707 : vec3<f32> = u_xlat8;
  u_xlat2.x = dot(x_706, x_707);
  let x_715 : vec4<f32> = u_xlat2;
  let x_717 : vec4<f32> = textureSample(x_LightTextureB0, sampler_LightTextureB0, vec2<f32>(x_715.x, x_715.x));
  u_xlat2.x = x_717.x;
  let x_728 : vec3<f32> = u_xlat8;
  let x_729 : vec4<f32> = textureSample(x_LightTexture0, sampler_LightTexture0, x_728);
  u_xlat13.x = x_729.w;
  let x_733 : f32 = u_xlat13.x;
  let x_735 : f32 = u_xlat2.x;
  u_xlat2.x = (x_733 * x_735);
  let x_738 : f32 = u_xlat34;
  let x_740 : f32 = u_xlat2.x;
  u_xlat34 = (x_738 * x_740);
  let x_743 : vec3<f32> = vs_TEXCOORD1;
  let x_744 : vec3<f32> = u_xlat7;
  u_xlat2.x = dot(x_743, x_744);
  let x_748 : vec3<f32> = vs_TEXCOORD2;
  let x_749 : vec3<f32> = u_xlat7;
  u_xlat2.y = dot(x_748, x_749);
  let x_753 : vec3<f32> = vs_TEXCOORD3;
  let x_754 : vec3<f32> = u_xlat7;
  u_xlat2.z = dot(x_753, x_754);
  let x_757 : vec4<f32> = u_xlat2;
  let x_759 : vec4<f32> = u_xlat2;
  u_xlat35 = dot(vec3<f32>(x_757.x, x_757.y, x_757.z), vec3<f32>(x_759.x, x_759.y, x_759.z));
  let x_762 : f32 = u_xlat35;
  u_xlat35 = inverseSqrt(x_762);
  let x_764 : f32 = u_xlat35;
  let x_766 : vec4<f32> = u_xlat2;
  let x_768 : vec3<f32> = (vec3<f32>(x_764, x_764, x_764) * vec3<f32>(x_766.x, x_766.y, x_766.z));
  let x_769 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_768.x, x_768.y, x_768.z, x_769.w);
  let x_771 : f32 = u_xlat34;
  let x_775 : vec4<f32> = x_18.x_LightColor0;
  u_xlat7 = (vec3<f32>(x_771, x_771, x_771) * vec3<f32>(x_775.x, x_775.y, x_775.z));
  let x_778 : vec3<f32> = u_xlat5;
  let x_780 : vec4<f32> = x_18.x_Color;
  u_xlat5 = ((x_778 * vec3<f32>(x_780.x, x_780.y, x_780.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_786 : vec2<f32> = u_xlat4;
  let x_788 : vec3<f32> = u_xlat5;
  u_xlat5 = ((vec3<f32>(x_786.x, x_786.x, x_786.x) * x_788) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_794 : f32 = u_xlat4.x;
  u_xlat34 = ((-(x_794) * 0.959999979f) + 0.959999979f);
  let x_799 : f32 = u_xlat34;
  let x_801 : vec4<f32> = u_xlat6;
  let x_803 : vec3<f32> = (vec3<f32>(x_799, x_799, x_799) * vec3<f32>(x_801.x, x_801.y, x_801.z));
  let x_804 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_803.x, x_803.y, x_803.z, x_804.w);
  let x_807 : f32 = u_xlat4.y;
  let x_809 : f32 = u_xlat26;
  u_xlat34 = ((-(x_807) * x_809) + 1.0f);
  let x_812 : vec3<f32> = u_xlat0;
  let x_813 : f32 = u_xlat33;
  let x_816 : vec3<f32> = u_xlat3;
  u_xlat0 = ((x_812 * vec3<f32>(x_813, x_813, x_813)) + x_816);
  let x_818 : vec3<f32> = u_xlat0;
  let x_819 : vec3<f32> = u_xlat0;
  u_xlat33 = dot(x_818, x_819);
  let x_821 : f32 = u_xlat33;
  u_xlat33 = max(x_821, 0.001f);
  let x_824 : f32 = u_xlat33;
  u_xlat33 = inverseSqrt(x_824);
  let x_826 : f32 = u_xlat33;
  let x_828 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_826, x_826, x_826) * x_828);
  let x_830 : vec4<f32> = u_xlat2;
  let x_832 : vec3<f32> = u_xlat3;
  u_xlat33 = dot(vec3<f32>(x_830.x, x_830.y, x_830.z), x_832);
  let x_834 : vec4<f32> = u_xlat2;
  let x_836 : vec3<f32> = u_xlat1;
  u_xlat35 = dot(vec3<f32>(x_834.x, x_834.y, x_834.z), x_836);
  let x_838 : f32 = u_xlat35;
  u_xlat35 = clamp(x_838, 0.0f, 1.0f);
  let x_840 : vec4<f32> = u_xlat2;
  let x_842 : vec3<f32> = u_xlat0;
  u_xlat2.x = dot(vec3<f32>(x_840.x, x_840.y, x_840.z), x_842);
  let x_846 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_846, 0.0f, 1.0f);
  let x_849 : vec3<f32> = u_xlat1;
  let x_850 : vec3<f32> = u_xlat0;
  u_xlat0.x = dot(x_849, x_850);
  let x_854 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_854, 0.0f, 1.0f);
  let x_859 : f32 = u_xlat0.x;
  let x_861 : f32 = u_xlat0.x;
  u_xlat11.x = (x_859 * x_861);
  let x_864 : vec3<f32> = u_xlat11;
  let x_866 : f32 = u_xlat34;
  u_xlat11.x = dot(vec2<f32>(x_864.x, x_864.x), vec2<f32>(x_866, x_866));
  let x_871 : f32 = u_xlat11.x;
  u_xlat11.x = (x_871 + -0.5f);
  let x_876 : f32 = u_xlat35;
  u_xlat22 = (-(x_876) + 1.0f);
  let x_879 : f32 = u_xlat22;
  let x_880 : f32 = u_xlat22;
  u_xlat1.x = (x_879 * x_880);
  let x_884 : f32 = u_xlat1.x;
  let x_886 : f32 = u_xlat1.x;
  u_xlat1.x = (x_884 * x_886);
  let x_889 : f32 = u_xlat22;
  let x_891 : f32 = u_xlat1.x;
  u_xlat22 = (x_889 * x_891);
  let x_894 : f32 = u_xlat11.x;
  let x_895 : f32 = u_xlat22;
  u_xlat22 = ((x_894 * x_895) + 1.0f);
  let x_898 : f32 = u_xlat33;
  u_xlat1.x = (-(abs(x_898)) + 1.0f);
  let x_905 : f32 = u_xlat1.x;
  let x_907 : f32 = u_xlat1.x;
  u_xlat12 = (x_905 * x_907);
  let x_909 : f32 = u_xlat12;
  let x_910 : f32 = u_xlat12;
  u_xlat12 = (x_909 * x_910);
  let x_913 : f32 = u_xlat1.x;
  let x_914 : f32 = u_xlat12;
  u_xlat1.x = (x_913 * x_914);
  let x_918 : f32 = u_xlat11.x;
  let x_920 : f32 = u_xlat1.x;
  u_xlat11.x = ((x_918 * x_920) + 1.0f);
  let x_925 : f32 = u_xlat11.x;
  let x_926 : f32 = u_xlat22;
  u_xlat11.x = (x_925 * x_926);
  let x_929 : f32 = u_xlat34;
  let x_930 : f32 = u_xlat34;
  u_xlat22 = (x_929 * x_930);
  let x_932 : f32 = u_xlat22;
  u_xlat22 = max(x_932, 0.002f);
  let x_935 : f32 = u_xlat22;
  u_xlat1.x = (-(x_935) + 1.0f);
  let x_939 : f32 = u_xlat33;
  let x_942 : f32 = u_xlat1.x;
  let x_944 : f32 = u_xlat22;
  u_xlat12 = ((abs(x_939) * x_942) + x_944);
  let x_946 : f32 = u_xlat35;
  let x_948 : f32 = u_xlat1.x;
  let x_950 : f32 = u_xlat22;
  u_xlat1.x = ((x_946 * x_948) + x_950);
  let x_953 : f32 = u_xlat33;
  let x_956 : f32 = u_xlat1.x;
  u_xlat33 = (abs(x_953) * x_956);
  let x_958 : f32 = u_xlat35;
  let x_959 : f32 = u_xlat12;
  let x_961 : f32 = u_xlat33;
  u_xlat33 = ((x_958 * x_959) + x_961);
  let x_963 : f32 = u_xlat33;
  u_xlat33 = (x_963 + 0.00001f);
  let x_965 : f32 = u_xlat33;
  u_xlat33 = (0.5f / x_965);
  let x_967 : f32 = u_xlat22;
  let x_968 : f32 = u_xlat22;
  u_xlat22 = (x_967 * x_968);
  let x_971 : f32 = u_xlat2.x;
  let x_972 : f32 = u_xlat22;
  let x_975 : f32 = u_xlat2.x;
  u_xlat1.x = ((x_971 * x_972) + -(x_975));
  let x_980 : f32 = u_xlat1.x;
  let x_982 : f32 = u_xlat2.x;
  u_xlat1.x = ((x_980 * x_982) + 1.0f);
  let x_986 : f32 = u_xlat22;
  u_xlat22 = (x_986 * 0.318309873f);
  let x_990 : f32 = u_xlat1.x;
  let x_992 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_990 * x_992) + 0.0000001f);
  let x_997 : f32 = u_xlat22;
  let x_999 : f32 = u_xlat1.x;
  u_xlat22 = (x_997 / x_999);
  let x_1001 : f32 = u_xlat22;
  let x_1002 : f32 = u_xlat33;
  u_xlat11.y = (x_1001 * x_1002);
  let x_1005 : f32 = u_xlat35;
  let x_1007 : vec3<f32> = u_xlat11;
  let x_1009 : vec2<f32> = (vec2<f32>(x_1005, x_1005) * vec2<f32>(x_1007.x, x_1007.y));
  let x_1010 : vec3<f32> = u_xlat11;
  u_xlat11 = vec3<f32>(x_1009.x, x_1009.y, x_1010.z);
  let x_1013 : f32 = u_xlat11.y;
  u_xlat22 = (x_1013 * 3.141592741f);
  let x_1016 : f32 = u_xlat22;
  u_xlat22 = max(x_1016, 0.0f);
  let x_1018 : vec3<f32> = u_xlat5;
  let x_1019 : vec3<f32> = u_xlat5;
  u_xlat33 = dot(x_1018, x_1019);
  let x_1022 : f32 = u_xlat33;
  u_xlatb33 = !((x_1022 == 0.0f));
  let x_1024 : bool = u_xlatb33;
  u_xlat33 = select(0.0f, 1.0f, x_1024);
  let x_1026 : f32 = u_xlat33;
  let x_1027 : f32 = u_xlat22;
  u_xlat22 = (x_1026 * x_1027);
  let x_1029 : vec3<f32> = u_xlat11;
  let x_1031 : vec3<f32> = u_xlat7;
  u_xlat1 = (vec3<f32>(x_1029.x, x_1029.x, x_1029.x) * x_1031);
  let x_1033 : vec3<f32> = u_xlat7;
  let x_1034 : f32 = u_xlat22;
  u_xlat11 = (x_1033 * vec3<f32>(x_1034, x_1034, x_1034));
  let x_1038 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_1038) + 1.0f);
  let x_1043 : f32 = u_xlat0.x;
  let x_1045 : f32 = u_xlat0.x;
  u_xlat34 = (x_1043 * x_1045);
  let x_1047 : f32 = u_xlat34;
  let x_1048 : f32 = u_xlat34;
  u_xlat34 = (x_1047 * x_1048);
  let x_1051 : f32 = u_xlat0.x;
  let x_1052 : f32 = u_xlat34;
  u_xlat0.x = (x_1051 * x_1052);
  let x_1055 : vec3<f32> = u_xlat5;
  let x_1058 : vec3<f32> = (-(x_1055) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_1059 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1058.x, x_1058.y, x_1058.z, x_1059.w);
  let x_1061 : vec4<f32> = u_xlat2;
  let x_1063 : vec3<f32> = u_xlat0;
  let x_1066 : vec3<f32> = u_xlat5;
  let x_1067 : vec3<f32> = ((vec3<f32>(x_1061.x, x_1061.y, x_1061.z) * vec3<f32>(x_1063.x, x_1063.x, x_1063.x)) + x_1066);
  let x_1068 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1067.x, x_1067.y, x_1067.z, x_1068.w);
  let x_1070 : vec3<f32> = u_xlat11;
  let x_1071 : vec4<f32> = u_xlat2;
  u_xlat0 = (x_1070 * vec3<f32>(x_1071.x, x_1071.y, x_1071.z));
  let x_1076 : vec4<f32> = u_xlat6;
  let x_1078 : vec3<f32> = u_xlat1;
  let x_1080 : vec3<f32> = u_xlat0;
  let x_1081 : vec3<f32> = ((vec3<f32>(x_1076.x, x_1076.y, x_1076.z) * x_1078) + x_1080);
  let x_1082 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1081.x, x_1081.y, x_1081.z, x_1082.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(4) vs_TEXCOORD4_param : vec3<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(3) vs_TEXCOORD3_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

