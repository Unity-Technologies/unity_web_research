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
  x_Color : vec4<f32>,
}

var<private> u_xlat0 : vec3<f32>;

var<private> vs_TEXCOORD4 : vec3<f32>;

@group(0) @binding(0) var<uniform> x_18 : PGlobals;

var<private> u_xlat27 : f32;

var<private> u_xlat1 : vec3<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat28 : f32;

var<private> u_xlat3 : vec3<f32>;

@group(0) @binding(1) var x_Noise : texture_2d<f32>;

@group(0) @binding(14) var sampler_Noise : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> u_xlat4 : vec4<f32>;

@group(0) @binding(2) var x_MetallicSmooth : texture_2d<f32>;

@group(0) @binding(16) var sampler_MetallicSmooth : sampler;

var<private> u_xlat29 : f32;

var<private> u_xlat5 : vec3<f32>;

@group(0) @binding(3) var x_MainTex : texture_2d<f32>;

@group(0) @binding(13) var sampler_MainTex : sampler;

var<private> u_xlat6 : vec3<f32>;

var<private> u_xlat7 : vec3<f32>;

@group(0) @binding(4) var x_Normal : texture_2d<f32>;

@group(0) @binding(15) var sampler_Normal : sampler;

var<private> u_xlat30 : f32;

var<private> u_xlatb28 : bool;

var<private> u_xlat8 : vec3<f32>;

var<private> u_xlatb2 : bool;

var<private> u_xlat11 : vec3<f32>;

var<private> u_xlat32 : f32;

@group(0) @binding(7) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(9) var samplerunity_ProbeVolumeSH : sampler;

@group(0) @binding(8) var x_ShadowMapTexture : texture_depth_cube;

@group(0) @binding(10) var sampler_ShadowMapTexture : sampler_comparison;

var<private> u_xlat20 : f32;

@group(0) @binding(5) var x_LightTextureB0 : texture_2d<f32>;

@group(0) @binding(12) var sampler_LightTextureB0 : sampler;

@group(0) @binding(6) var x_LightTexture0 : texture_cube<f32>;

@group(0) @binding(11) var sampler_LightTexture0 : sampler;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

var<private> u_xlat9 : vec3<f32>;

var<private> u_xlat18 : f32;

var<private> u_xlat10 : f32;

var<private> u_xlatb27 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_354 : vec3<f32>;
  var txVec0 : vec4<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_12 : vec3<f32> = vs_TEXCOORD4;
  let x_23 : vec4<f32> = x_18.x_WorldSpaceLightPos0;
  u_xlat0 = (-(x_12) + vec3<f32>(x_23.x, x_23.y, x_23.z));
  let x_28 : vec3<f32> = u_xlat0;
  let x_29 : vec3<f32> = u_xlat0;
  u_xlat27 = dot(x_28, x_29);
  let x_31 : f32 = u_xlat27;
  u_xlat27 = inverseSqrt(x_31);
  let x_34 : f32 = u_xlat27;
  let x_36 : vec3<f32> = u_xlat0;
  u_xlat1 = (vec3<f32>(x_34, x_34, x_34) * x_36);
  let x_40 : vec3<f32> = vs_TEXCOORD4;
  let x_45 : vec3<f32> = x_18.x_WorldSpaceCameraPos;
  let x_46 : vec3<f32> = (-(x_40) + x_45);
  let x_47 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_46.x, x_46.y, x_46.z, x_47.w);
  let x_50 : vec4<f32> = u_xlat2;
  let x_52 : vec4<f32> = u_xlat2;
  u_xlat28 = dot(vec3<f32>(x_50.x, x_50.y, x_50.z), vec3<f32>(x_52.x, x_52.y, x_52.z));
  let x_55 : f32 = u_xlat28;
  u_xlat28 = inverseSqrt(x_55);
  let x_58 : f32 = u_xlat28;
  let x_60 : vec4<f32> = u_xlat2;
  u_xlat3 = (vec3<f32>(x_58, x_58, x_58) * vec3<f32>(x_60.x, x_60.y, x_60.z));
  let x_76 : vec4<f32> = vs_TEXCOORD0;
  let x_78 : vec4<f32> = textureSample(x_Noise, sampler_Noise, vec2<f32>(x_76.x, x_76.y));
  u_xlat28 = x_78.x;
  let x_88 : vec4<f32> = vs_TEXCOORD0;
  let x_90 : vec4<f32> = textureSample(x_MetallicSmooth, sampler_MetallicSmooth, vec2<f32>(x_88.z, x_88.w));
  let x_91 : vec2<f32> = vec2<f32>(x_90.x, x_90.w);
  let x_92 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_91.x, x_91.y, x_92.z, x_92.w);
  let x_94 : f32 = u_xlat28;
  u_xlat28 = (-(x_94) + 1.0f);
  let x_98 : f32 = u_xlat28;
  let x_102 : f32 = x_18.x_Cutoff;
  u_xlat28 = (x_98 + -(x_102));
  let x_108 : f32 = x_18.x_EdgeSize;
  u_xlat29 = (1.0f / -(x_108));
  let x_111 : f32 = u_xlat28;
  let x_112 : f32 = u_xlat29;
  u_xlat28 = (x_111 * x_112);
  let x_114 : f32 = u_xlat28;
  u_xlat28 = clamp(x_114, 0.0f, 1.0f);
  let x_117 : f32 = u_xlat28;
  u_xlat29 = ((x_117 * -2.0f) + 3.0f);
  let x_122 : f32 = u_xlat28;
  let x_123 : f32 = u_xlat28;
  u_xlat28 = (x_122 * x_123);
  let x_131 : vec4<f32> = vs_TEXCOORD0;
  let x_133 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_131.z, x_131.w));
  u_xlat5 = vec3<f32>(x_133.x, x_133.y, x_133.z);
  let x_136 : vec3<f32> = u_xlat5;
  let x_139 : vec4<f32> = x_18.x_Color;
  u_xlat6 = (x_136 * vec3<f32>(x_139.x, x_139.y, x_139.z));
  let x_148 : vec4<f32> = vs_TEXCOORD0;
  let x_150 : vec4<f32> = textureSample(x_Normal, sampler_Normal, vec2<f32>(x_148.z, x_148.w));
  u_xlat7 = vec3<f32>(x_150.x, x_150.y, x_150.w);
  let x_154 : f32 = u_xlat7.z;
  let x_156 : f32 = u_xlat7.x;
  u_xlat7.x = (x_154 * x_156);
  let x_159 : vec3<f32> = u_xlat7;
  let x_166 : vec2<f32> = ((vec2<f32>(x_159.x, x_159.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_167 : vec3<f32> = u_xlat7;
  u_xlat7 = vec3<f32>(x_166.x, x_166.y, x_167.z);
  let x_170 : vec3<f32> = u_xlat7;
  let x_172 : vec3<f32> = u_xlat7;
  u_xlat30 = dot(vec2<f32>(x_170.x, x_170.y), vec2<f32>(x_172.x, x_172.y));
  let x_175 : f32 = u_xlat30;
  u_xlat30 = min(x_175, 1.0f);
  let x_177 : f32 = u_xlat30;
  u_xlat30 = (-(x_177) + 1.0f);
  let x_180 : f32 = u_xlat30;
  u_xlat7.z = sqrt(x_180);
  let x_184 : f32 = u_xlat4.x;
  let x_187 : f32 = x_18.x_Metallic;
  u_xlat30 = (x_184 * x_187);
  let x_189 : f32 = u_xlat29;
  let x_191 : f32 = u_xlat28;
  let x_194 : f32 = x_18.x_Cutoff;
  u_xlat28 = ((-(x_189) * x_191) + -(x_194));
  let x_197 : f32 = u_xlat28;
  u_xlat28 = (x_197 + 1.0f);
  let x_202 : f32 = u_xlat28;
  u_xlatb28 = (x_202 < 0.0f);
  let x_204 : bool = u_xlatb28;
  if (((select(0i, 1i, x_204) * -1i) != 0i)) {
    discard;
  }
  let x_212 : vec3<f32> = vs_TEXCOORD4;
  let x_216 : vec4<f32> = x_18.unity_WorldToLight[1i];
  let x_218 : vec3<f32> = (vec3<f32>(x_212.y, x_212.y, x_212.y) * vec3<f32>(x_216.x, x_216.y, x_216.z));
  let x_219 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_218.x, x_219.y, x_218.y, x_218.z);
  let x_222 : vec4<f32> = x_18.unity_WorldToLight[0i];
  let x_224 : vec3<f32> = vs_TEXCOORD4;
  let x_227 : vec4<f32> = u_xlat4;
  let x_229 : vec3<f32> = ((vec3<f32>(x_222.x, x_222.y, x_222.z) * vec3<f32>(x_224.x, x_224.x, x_224.x)) + vec3<f32>(x_227.x, x_227.z, x_227.w));
  let x_230 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_229.x, x_230.y, x_229.y, x_229.z);
  let x_234 : vec4<f32> = x_18.unity_WorldToLight[2i];
  let x_236 : vec3<f32> = vs_TEXCOORD4;
  let x_239 : vec4<f32> = u_xlat4;
  let x_241 : vec3<f32> = ((vec3<f32>(x_234.x, x_234.y, x_234.z) * vec3<f32>(x_236.z, x_236.z, x_236.z)) + vec3<f32>(x_239.x, x_239.z, x_239.w));
  let x_242 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_241.x, x_242.y, x_241.y, x_241.z);
  let x_244 : vec4<f32> = u_xlat4;
  let x_248 : vec4<f32> = x_18.unity_WorldToLight[3i];
  let x_250 : vec3<f32> = (vec3<f32>(x_244.x, x_244.z, x_244.w) + vec3<f32>(x_248.x, x_248.y, x_248.z));
  let x_251 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_250.x, x_251.y, x_250.y, x_250.z);
  let x_256 : f32 = x_18.unity_MatrixV[0i].z;
  u_xlat8.x = x_256;
  let x_259 : f32 = x_18.unity_MatrixV[1i].z;
  u_xlat8.y = x_259;
  let x_263 : f32 = x_18.unity_MatrixV[2i].z;
  u_xlat8.z = x_263;
  let x_265 : vec4<f32> = u_xlat2;
  let x_267 : vec3<f32> = u_xlat8;
  u_xlat28 = dot(vec3<f32>(x_265.x, x_265.y, x_265.z), x_267);
  let x_269 : vec3<f32> = vs_TEXCOORD4;
  let x_272 : vec4<f32> = x_18.unity_ShadowFadeCenterAndType;
  let x_275 : vec3<f32> = (x_269 + -(vec3<f32>(x_272.x, x_272.y, x_272.z)));
  let x_276 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_275.x, x_275.y, x_275.z, x_276.w);
  let x_278 : vec4<f32> = u_xlat2;
  let x_280 : vec4<f32> = u_xlat2;
  u_xlat2.x = dot(vec3<f32>(x_278.x, x_278.y, x_278.z), vec3<f32>(x_280.x, x_280.y, x_280.z));
  let x_285 : f32 = u_xlat2.x;
  u_xlat2.x = sqrt(x_285);
  let x_288 : f32 = u_xlat28;
  let x_291 : f32 = u_xlat2.x;
  u_xlat2.x = (-(x_288) + x_291);
  let x_296 : f32 = x_18.unity_ShadowFadeCenterAndType.w;
  let x_298 : f32 = u_xlat2.x;
  let x_300 : f32 = u_xlat28;
  u_xlat28 = ((x_296 * x_298) + x_300);
  let x_302 : f32 = u_xlat28;
  let x_305 : f32 = x_18.x_LightShadowData.z;
  let x_308 : f32 = x_18.x_LightShadowData.w;
  u_xlat28 = ((x_302 * x_305) + x_308);
  let x_310 : f32 = u_xlat28;
  u_xlat28 = clamp(x_310, 0.0f, 1.0f);
  let x_315 : f32 = x_18.unity_ProbeVolumeParams.x;
  u_xlatb2 = (x_315 == 1.0f);
  let x_317 : bool = u_xlatb2;
  if (x_317) {
    let x_321 : f32 = x_18.unity_ProbeVolumeParams.y;
    u_xlatb2 = (x_321 == 1.0f);
    let x_324 : vec3<f32> = vs_TEXCOORD4;
    let x_328 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[1i];
    u_xlat11 = (vec3<f32>(x_324.y, x_324.y, x_324.y) * vec3<f32>(x_328.x, x_328.y, x_328.z));
    let x_332 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[0i];
    let x_334 : vec3<f32> = vs_TEXCOORD4;
    let x_337 : vec3<f32> = u_xlat11;
    u_xlat11 = ((vec3<f32>(x_332.x, x_332.y, x_332.z) * vec3<f32>(x_334.x, x_334.x, x_334.x)) + x_337);
    let x_340 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[2i];
    let x_342 : vec3<f32> = vs_TEXCOORD4;
    let x_345 : vec3<f32> = u_xlat11;
    u_xlat11 = ((vec3<f32>(x_340.x, x_340.y, x_340.z) * vec3<f32>(x_342.z, x_342.z, x_342.z)) + x_345);
    let x_347 : vec3<f32> = u_xlat11;
    let x_349 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[3i];
    u_xlat11 = (x_347 + vec3<f32>(x_349.x, x_349.y, x_349.z));
    let x_352 : bool = u_xlatb2;
    if (x_352) {
      let x_357 : vec3<f32> = u_xlat11;
      x_354 = x_357;
    } else {
      let x_359 : vec3<f32> = vs_TEXCOORD4;
      x_354 = x_359;
    }
    let x_360 : vec3<f32> = x_354;
    let x_361 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_360.x, x_360.y, x_360.z, x_361.w);
    let x_363 : vec4<f32> = u_xlat2;
    let x_367 : vec3<f32> = x_18.unity_ProbeVolumeMin;
    let x_369 : vec3<f32> = (vec3<f32>(x_363.x, x_363.y, x_363.z) + -(x_367));
    let x_370 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_369.x, x_369.y, x_369.z, x_370.w);
    let x_372 : vec4<f32> = u_xlat2;
    let x_376 : vec3<f32> = x_18.unity_ProbeVolumeSizeInv;
    let x_377 : vec3<f32> = (vec3<f32>(x_372.x, x_372.y, x_372.z) * x_376);
    let x_378 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_378.x, x_377.x, x_377.y, x_377.z);
    let x_381 : f32 = u_xlat2.y;
    u_xlat11.x = ((x_381 * 0.25f) + 0.75f);
    let x_389 : f32 = x_18.unity_ProbeVolumeParams.z;
    u_xlat32 = ((x_389 * 0.5f) + 0.75f);
    let x_394 : f32 = u_xlat11.x;
    let x_395 : f32 = u_xlat32;
    u_xlat2.x = max(x_394, x_395);
    let x_406 : vec4<f32> = u_xlat2;
    let x_408 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_406.x, x_406.z, x_406.w));
    u_xlat2 = x_408;
  } else {
    u_xlat2.x = 1.0f;
    u_xlat2.y = 1.0f;
    u_xlat2.z = 1.0f;
    u_xlat2.w = 1.0f;
  }
  let x_414 : vec4<f32> = u_xlat2;
  let x_417 : vec4<f32> = x_18.unity_OcclusionMaskSelector;
  u_xlat2.x = dot(x_414, x_417);
  let x_421 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_421, 0.0f, 1.0f);
  let x_424 : vec3<f32> = vs_TEXCOORD4;
  let x_426 : vec4<f32> = x_18.x_LightPositionRange;
  u_xlat11 = (x_424 + -(vec3<f32>(x_426.x, x_426.y, x_426.z)));
  let x_431 : f32 = u_xlat11.y;
  let x_434 : f32 = u_xlat11.x;
  u_xlat32 = max(abs(x_431), abs(x_434));
  let x_438 : f32 = u_xlat11.z;
  let x_440 : f32 = u_xlat32;
  u_xlat32 = max(abs(x_438), x_440);
  let x_442 : f32 = u_xlat32;
  let x_444 : f32 = x_18.x_LightProjectionParams.z;
  u_xlat32 = (x_442 + -(x_444));
  let x_447 : f32 = u_xlat32;
  u_xlat32 = max(x_447, 0.00001f);
  let x_450 : f32 = u_xlat32;
  let x_452 : f32 = x_18.x_LightProjectionParams.w;
  u_xlat32 = (x_450 * x_452);
  let x_455 : f32 = x_18.x_LightProjectionParams.y;
  let x_456 : f32 = u_xlat32;
  u_xlat32 = (x_455 / x_456);
  let x_458 : f32 = u_xlat32;
  let x_460 : f32 = x_18.x_LightProjectionParams.x;
  u_xlat32 = (x_458 + -(x_460));
  let x_463 : f32 = u_xlat32;
  u_xlat32 = (-(x_463) + 1.0f);
  let x_468 : vec3<f32> = u_xlat11;
  let x_469 : f32 = u_xlat32;
  txVec0 = vec4<f32>(x_468.x, x_468.y, x_468.z, x_469);
  let x_482 : vec4<f32> = txVec0;
  let x_484 : f32 = textureSampleCompare(x_ShadowMapTexture, sampler_ShadowMapTexture, x_482.xyz, x_482.w);
  u_xlat11.x = x_484;
  let x_488 : f32 = x_18.x_LightShadowData.x;
  u_xlat20 = (-(x_488) + 1.0f);
  let x_492 : f32 = u_xlat11.x;
  let x_493 : f32 = u_xlat20;
  let x_496 : f32 = x_18.x_LightShadowData.x;
  u_xlat11.x = ((x_492 * x_493) + x_496);
  let x_500 : f32 = u_xlat11.x;
  let x_503 : f32 = u_xlat2.x;
  u_xlat2.x = (-(x_500) + x_503);
  let x_506 : f32 = u_xlat28;
  let x_508 : f32 = u_xlat2.x;
  let x_511 : f32 = u_xlat11.x;
  u_xlat28 = ((x_506 * x_508) + x_511);
  let x_513 : vec4<f32> = u_xlat4;
  let x_515 : vec4<f32> = u_xlat4;
  u_xlat2.x = dot(vec3<f32>(x_513.x, x_513.z, x_513.w), vec3<f32>(x_515.x, x_515.z, x_515.w));
  let x_524 : vec4<f32> = u_xlat2;
  let x_526 : vec4<f32> = textureSample(x_LightTextureB0, sampler_LightTextureB0, vec2<f32>(x_524.x, x_524.x));
  u_xlat2.x = x_526.x;
  let x_537 : vec4<f32> = u_xlat4;
  let x_539 : vec4<f32> = textureSample(x_LightTexture0, sampler_LightTexture0, vec3<f32>(x_537.x, x_537.z, x_537.w));
  u_xlat11.x = x_539.w;
  let x_543 : f32 = u_xlat11.x;
  let x_545 : f32 = u_xlat2.x;
  u_xlat2.x = (x_543 * x_545);
  let x_548 : f32 = u_xlat28;
  let x_550 : f32 = u_xlat2.x;
  u_xlat28 = (x_548 * x_550);
  let x_553 : vec3<f32> = vs_TEXCOORD1;
  let x_554 : vec3<f32> = u_xlat7;
  u_xlat2.x = dot(x_553, x_554);
  let x_558 : vec3<f32> = vs_TEXCOORD2;
  let x_559 : vec3<f32> = u_xlat7;
  u_xlat2.y = dot(x_558, x_559);
  let x_563 : vec3<f32> = vs_TEXCOORD3;
  let x_564 : vec3<f32> = u_xlat7;
  u_xlat2.z = dot(x_563, x_564);
  let x_567 : vec4<f32> = u_xlat2;
  let x_569 : vec4<f32> = u_xlat2;
  u_xlat29 = dot(vec3<f32>(x_567.x, x_567.y, x_567.z), vec3<f32>(x_569.x, x_569.y, x_569.z));
  let x_572 : f32 = u_xlat29;
  u_xlat29 = inverseSqrt(x_572);
  let x_574 : f32 = u_xlat29;
  let x_576 : vec4<f32> = u_xlat2;
  let x_578 : vec3<f32> = (vec3<f32>(x_574, x_574, x_574) * vec3<f32>(x_576.x, x_576.y, x_576.z));
  let x_579 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_578.x, x_578.y, x_578.z, x_579.w);
  let x_581 : f32 = u_xlat28;
  let x_585 : vec4<f32> = x_18.x_LightColor0;
  let x_587 : vec3<f32> = (vec3<f32>(x_581, x_581, x_581) * vec3<f32>(x_585.x, x_585.y, x_585.z));
  let x_588 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_587.x, x_588.y, x_587.y, x_587.z);
  let x_590 : vec3<f32> = u_xlat5;
  let x_592 : vec4<f32> = x_18.x_Color;
  u_xlat5 = ((x_590 * vec3<f32>(x_592.x, x_592.y, x_592.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_598 : f32 = u_xlat30;
  let x_600 : vec3<f32> = u_xlat5;
  u_xlat5 = ((vec3<f32>(x_598, x_598, x_598) * x_600) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_605 : f32 = u_xlat30;
  u_xlat28 = ((-(x_605) * 0.959999979f) + 0.959999979f);
  let x_610 : f32 = u_xlat28;
  let x_612 : vec3<f32> = u_xlat6;
  u_xlat6 = (vec3<f32>(x_610, x_610, x_610) * x_612);
  let x_615 : f32 = u_xlat4.y;
  let x_619 : f32 = x_18.x_Glossiness;
  u_xlat28 = ((-(x_615) * x_619) + 1.0f);
  let x_622 : vec3<f32> = u_xlat0;
  let x_623 : f32 = u_xlat27;
  let x_626 : vec3<f32> = u_xlat3;
  u_xlat0 = ((x_622 * vec3<f32>(x_623, x_623, x_623)) + x_626);
  let x_628 : vec3<f32> = u_xlat0;
  let x_629 : vec3<f32> = u_xlat0;
  u_xlat27 = dot(x_628, x_629);
  let x_631 : f32 = u_xlat27;
  u_xlat27 = max(x_631, 0.001f);
  let x_634 : f32 = u_xlat27;
  u_xlat27 = inverseSqrt(x_634);
  let x_636 : f32 = u_xlat27;
  let x_638 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_636, x_636, x_636) * x_638);
  let x_640 : vec4<f32> = u_xlat2;
  let x_642 : vec3<f32> = u_xlat3;
  u_xlat27 = dot(vec3<f32>(x_640.x, x_640.y, x_640.z), x_642);
  let x_644 : vec4<f32> = u_xlat2;
  let x_646 : vec3<f32> = u_xlat1;
  u_xlat29 = dot(vec3<f32>(x_644.x, x_644.y, x_644.z), x_646);
  let x_648 : f32 = u_xlat29;
  u_xlat29 = clamp(x_648, 0.0f, 1.0f);
  let x_650 : vec4<f32> = u_xlat2;
  let x_652 : vec3<f32> = u_xlat0;
  u_xlat2.x = dot(vec3<f32>(x_650.x, x_650.y, x_650.z), x_652);
  let x_656 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_656, 0.0f, 1.0f);
  let x_659 : vec3<f32> = u_xlat1;
  let x_660 : vec3<f32> = u_xlat0;
  u_xlat0.x = dot(x_659, x_660);
  let x_664 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_664, 0.0f, 1.0f);
  let x_669 : f32 = u_xlat0.x;
  let x_671 : f32 = u_xlat0.x;
  u_xlat9.x = (x_669 * x_671);
  let x_674 : vec3<f32> = u_xlat9;
  let x_676 : f32 = u_xlat28;
  u_xlat9.x = dot(vec2<f32>(x_674.x, x_674.x), vec2<f32>(x_676, x_676));
  let x_681 : f32 = u_xlat9.x;
  u_xlat9.x = (x_681 + -0.5f);
  let x_686 : f32 = u_xlat29;
  u_xlat18 = (-(x_686) + 1.0f);
  let x_689 : f32 = u_xlat18;
  let x_690 : f32 = u_xlat18;
  u_xlat1.x = (x_689 * x_690);
  let x_694 : f32 = u_xlat1.x;
  let x_696 : f32 = u_xlat1.x;
  u_xlat1.x = (x_694 * x_696);
  let x_699 : f32 = u_xlat18;
  let x_701 : f32 = u_xlat1.x;
  u_xlat18 = (x_699 * x_701);
  let x_704 : f32 = u_xlat9.x;
  let x_705 : f32 = u_xlat18;
  u_xlat18 = ((x_704 * x_705) + 1.0f);
  let x_708 : f32 = u_xlat27;
  u_xlat1.x = (-(abs(x_708)) + 1.0f);
  let x_715 : f32 = u_xlat1.x;
  let x_717 : f32 = u_xlat1.x;
  u_xlat10 = (x_715 * x_717);
  let x_719 : f32 = u_xlat10;
  let x_720 : f32 = u_xlat10;
  u_xlat10 = (x_719 * x_720);
  let x_723 : f32 = u_xlat1.x;
  let x_724 : f32 = u_xlat10;
  u_xlat1.x = (x_723 * x_724);
  let x_728 : f32 = u_xlat9.x;
  let x_730 : f32 = u_xlat1.x;
  u_xlat9.x = ((x_728 * x_730) + 1.0f);
  let x_735 : f32 = u_xlat9.x;
  let x_736 : f32 = u_xlat18;
  u_xlat9.x = (x_735 * x_736);
  let x_739 : f32 = u_xlat28;
  let x_740 : f32 = u_xlat28;
  u_xlat18 = (x_739 * x_740);
  let x_742 : f32 = u_xlat18;
  u_xlat18 = max(x_742, 0.002f);
  let x_745 : f32 = u_xlat18;
  u_xlat1.x = (-(x_745) + 1.0f);
  let x_749 : f32 = u_xlat27;
  let x_752 : f32 = u_xlat1.x;
  let x_754 : f32 = u_xlat18;
  u_xlat10 = ((abs(x_749) * x_752) + x_754);
  let x_756 : f32 = u_xlat29;
  let x_758 : f32 = u_xlat1.x;
  let x_760 : f32 = u_xlat18;
  u_xlat1.x = ((x_756 * x_758) + x_760);
  let x_763 : f32 = u_xlat27;
  let x_766 : f32 = u_xlat1.x;
  u_xlat27 = (abs(x_763) * x_766);
  let x_768 : f32 = u_xlat29;
  let x_769 : f32 = u_xlat10;
  let x_771 : f32 = u_xlat27;
  u_xlat27 = ((x_768 * x_769) + x_771);
  let x_773 : f32 = u_xlat27;
  u_xlat27 = (x_773 + 0.00001f);
  let x_775 : f32 = u_xlat27;
  u_xlat27 = (0.5f / x_775);
  let x_777 : f32 = u_xlat18;
  let x_778 : f32 = u_xlat18;
  u_xlat18 = (x_777 * x_778);
  let x_781 : f32 = u_xlat2.x;
  let x_782 : f32 = u_xlat18;
  let x_785 : f32 = u_xlat2.x;
  u_xlat1.x = ((x_781 * x_782) + -(x_785));
  let x_790 : f32 = u_xlat1.x;
  let x_792 : f32 = u_xlat2.x;
  u_xlat1.x = ((x_790 * x_792) + 1.0f);
  let x_796 : f32 = u_xlat18;
  u_xlat18 = (x_796 * 0.318309873f);
  let x_800 : f32 = u_xlat1.x;
  let x_802 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_800 * x_802) + 0.0000001f);
  let x_807 : f32 = u_xlat18;
  let x_809 : f32 = u_xlat1.x;
  u_xlat18 = (x_807 / x_809);
  let x_811 : f32 = u_xlat18;
  let x_812 : f32 = u_xlat27;
  u_xlat9.y = (x_811 * x_812);
  let x_815 : f32 = u_xlat29;
  let x_817 : vec3<f32> = u_xlat9;
  let x_819 : vec2<f32> = (vec2<f32>(x_815, x_815) * vec2<f32>(x_817.x, x_817.y));
  let x_820 : vec3<f32> = u_xlat9;
  u_xlat9 = vec3<f32>(x_819.x, x_819.y, x_820.z);
  let x_823 : f32 = u_xlat9.y;
  u_xlat18 = (x_823 * 3.141592741f);
  let x_826 : f32 = u_xlat18;
  u_xlat18 = max(x_826, 0.0f);
  let x_828 : vec3<f32> = u_xlat5;
  let x_829 : vec3<f32> = u_xlat5;
  u_xlat27 = dot(x_828, x_829);
  let x_832 : f32 = u_xlat27;
  u_xlatb27 = !((x_832 == 0.0f));
  let x_834 : bool = u_xlatb27;
  u_xlat27 = select(0.0f, 1.0f, x_834);
  let x_836 : f32 = u_xlat27;
  let x_837 : f32 = u_xlat18;
  u_xlat18 = (x_836 * x_837);
  let x_839 : vec3<f32> = u_xlat9;
  let x_841 : vec4<f32> = u_xlat4;
  u_xlat1 = (vec3<f32>(x_839.x, x_839.x, x_839.x) * vec3<f32>(x_841.x, x_841.z, x_841.w));
  let x_844 : vec4<f32> = u_xlat4;
  let x_846 : f32 = u_xlat18;
  u_xlat9 = (vec3<f32>(x_844.x, x_844.z, x_844.w) * vec3<f32>(x_846, x_846, x_846));
  let x_850 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_850) + 1.0f);
  let x_855 : f32 = u_xlat0.x;
  let x_857 : f32 = u_xlat0.x;
  u_xlat28 = (x_855 * x_857);
  let x_859 : f32 = u_xlat28;
  let x_860 : f32 = u_xlat28;
  u_xlat28 = (x_859 * x_860);
  let x_863 : f32 = u_xlat0.x;
  let x_864 : f32 = u_xlat28;
  u_xlat0.x = (x_863 * x_864);
  let x_867 : vec3<f32> = u_xlat5;
  let x_870 : vec3<f32> = (-(x_867) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_871 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_870.x, x_870.y, x_870.z, x_871.w);
  let x_873 : vec4<f32> = u_xlat2;
  let x_875 : vec3<f32> = u_xlat0;
  let x_878 : vec3<f32> = u_xlat5;
  let x_879 : vec3<f32> = ((vec3<f32>(x_873.x, x_873.y, x_873.z) * vec3<f32>(x_875.x, x_875.x, x_875.x)) + x_878);
  let x_880 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_879.x, x_879.y, x_879.z, x_880.w);
  let x_882 : vec3<f32> = u_xlat9;
  let x_883 : vec4<f32> = u_xlat2;
  u_xlat0 = (x_882 * vec3<f32>(x_883.x, x_883.y, x_883.z));
  let x_888 : vec3<f32> = u_xlat6;
  let x_889 : vec3<f32> = u_xlat1;
  let x_891 : vec3<f32> = u_xlat0;
  let x_892 : vec3<f32> = ((x_888 * x_889) + x_891);
  let x_893 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_892.x, x_892.y, x_892.z, x_893.w);
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

