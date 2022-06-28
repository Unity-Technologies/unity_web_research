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
  @size(8)
  padding_3 : u32,
  x_Color : vec4<f32>,
}

var<private> u_xlat0 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

@group(0) @binding(0) var<uniform> x_21 : PGlobals;

var<private> u_xlat24 : f32;

var<private> u_xlat1 : vec3<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat25 : f32;

var<private> u_xlat3 : vec3<f32>;

var<private> u_xlat4 : vec3<f32>;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(10) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> u_xlat5 : vec3<f32>;

var<private> vs_COLOR0 : vec4<f32>;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlatb2 : bool;

var<private> u_xlat10 : vec3<f32>;

var<private> u_xlat27 : f32;

@group(0) @binding(4) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(6) var samplerunity_ProbeVolumeSH : sampler;

@group(0) @binding(5) var x_ShadowMapTexture : texture_depth_2d;

@group(0) @binding(7) var sampler_ShadowMapTexture : sampler_comparison;

var<private> u_xlat18 : f32;

@group(0) @binding(2) var x_LightTexture0 : texture_2d<f32>;

@group(0) @binding(8) var sampler_LightTexture0 : sampler;

@group(0) @binding(3) var x_LightTextureB0 : texture_2d<f32>;

@group(0) @binding(9) var sampler_LightTextureB0 : sampler;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> u_xlat26 : f32;

var<private> u_xlat8 : vec3<f32>;

var<private> u_xlat16 : f32;

var<private> u_xlat9 : f32;

var<private> u_xlatb24 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_232 : vec3<f32>;
  var txVec0 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_12 : vec3<f32> = vs_TEXCOORD2;
  let x_26 : vec4<f32> = x_21.x_WorldSpaceLightPos0;
  u_xlat0 = (-(x_12) + vec3<f32>(x_26.x, x_26.y, x_26.z));
  let x_31 : vec3<f32> = u_xlat0;
  let x_32 : vec3<f32> = u_xlat0;
  u_xlat24 = dot(x_31, x_32);
  let x_34 : f32 = u_xlat24;
  u_xlat24 = inverseSqrt(x_34);
  let x_37 : f32 = u_xlat24;
  let x_39 : vec3<f32> = u_xlat0;
  u_xlat1 = (vec3<f32>(x_37, x_37, x_37) * x_39);
  let x_43 : vec3<f32> = vs_TEXCOORD2;
  let x_48 : vec3<f32> = x_21.x_WorldSpaceCameraPos;
  let x_49 : vec3<f32> = (-(x_43) + x_48);
  let x_50 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_49.x, x_49.y, x_49.z, x_50.w);
  let x_53 : vec4<f32> = u_xlat2;
  let x_55 : vec4<f32> = u_xlat2;
  u_xlat25 = dot(vec3<f32>(x_53.x, x_53.y, x_53.z), vec3<f32>(x_55.x, x_55.y, x_55.z));
  let x_58 : f32 = u_xlat25;
  u_xlat25 = inverseSqrt(x_58);
  let x_61 : f32 = u_xlat25;
  let x_63 : vec4<f32> = u_xlat2;
  u_xlat3 = (vec3<f32>(x_61, x_61, x_61) * vec3<f32>(x_63.x, x_63.y, x_63.z));
  let x_80 : vec2<f32> = vs_TEXCOORD0;
  let x_81 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_80);
  u_xlat4 = vec3<f32>(x_81.x, x_81.y, x_81.z);
  let x_83 : vec3<f32> = u_xlat4;
  let x_86 : vec4<f32> = x_21.x_Color;
  u_xlat4 = (x_83 * vec3<f32>(x_86.x, x_86.y, x_86.z));
  let x_90 : vec3<f32> = u_xlat4;
  let x_93 : vec4<f32> = vs_COLOR0;
  u_xlat5 = (x_90 * vec3<f32>(x_93.x, x_93.y, x_93.z));
  let x_97 : vec3<f32> = vs_TEXCOORD2;
  let x_101 : vec4<f32> = x_21.unity_WorldToLight[1i];
  u_xlat6 = (vec4<f32>(x_97.y, x_97.y, x_97.y, x_97.y) * x_101);
  let x_104 : vec4<f32> = x_21.unity_WorldToLight[0i];
  let x_105 : vec3<f32> = vs_TEXCOORD2;
  let x_108 : vec4<f32> = u_xlat6;
  u_xlat6 = ((x_104 * vec4<f32>(x_105.x, x_105.x, x_105.x, x_105.x)) + x_108);
  let x_112 : vec4<f32> = x_21.unity_WorldToLight[2i];
  let x_113 : vec3<f32> = vs_TEXCOORD2;
  let x_116 : vec4<f32> = u_xlat6;
  u_xlat6 = ((x_112 * vec4<f32>(x_113.z, x_113.z, x_113.z, x_113.z)) + x_116);
  let x_118 : vec4<f32> = u_xlat6;
  let x_121 : vec4<f32> = x_21.unity_WorldToLight[3i];
  u_xlat6 = (x_118 + x_121);
  let x_128 : f32 = x_21.unity_MatrixV[0i].z;
  u_xlat7.x = x_128;
  let x_132 : f32 = x_21.unity_MatrixV[1i].z;
  u_xlat7.y = x_132;
  let x_136 : f32 = x_21.unity_MatrixV[2i].z;
  u_xlat7.z = x_136;
  let x_138 : vec4<f32> = u_xlat2;
  let x_140 : vec4<f32> = u_xlat7;
  u_xlat25 = dot(vec3<f32>(x_138.x, x_138.y, x_138.z), vec3<f32>(x_140.x, x_140.y, x_140.z));
  let x_143 : vec3<f32> = vs_TEXCOORD2;
  let x_146 : vec4<f32> = x_21.unity_ShadowFadeCenterAndType;
  let x_149 : vec3<f32> = (x_143 + -(vec3<f32>(x_146.x, x_146.y, x_146.z)));
  let x_150 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_149.x, x_149.y, x_149.z, x_150.w);
  let x_152 : vec4<f32> = u_xlat2;
  let x_154 : vec4<f32> = u_xlat2;
  u_xlat2.x = dot(vec3<f32>(x_152.x, x_152.y, x_152.z), vec3<f32>(x_154.x, x_154.y, x_154.z));
  let x_159 : f32 = u_xlat2.x;
  u_xlat2.x = sqrt(x_159);
  let x_162 : f32 = u_xlat25;
  let x_165 : f32 = u_xlat2.x;
  u_xlat2.x = (-(x_162) + x_165);
  let x_170 : f32 = x_21.unity_ShadowFadeCenterAndType.w;
  let x_172 : f32 = u_xlat2.x;
  let x_174 : f32 = u_xlat25;
  u_xlat25 = ((x_170 * x_172) + x_174);
  let x_176 : f32 = u_xlat25;
  let x_179 : f32 = x_21.x_LightShadowData.z;
  let x_182 : f32 = x_21.x_LightShadowData.w;
  u_xlat25 = ((x_176 * x_179) + x_182);
  let x_184 : f32 = u_xlat25;
  u_xlat25 = clamp(x_184, 0.0f, 1.0f);
  let x_193 : f32 = x_21.unity_ProbeVolumeParams.x;
  u_xlatb2 = (x_193 == 1.0f);
  let x_195 : bool = u_xlatb2;
  if (x_195) {
    let x_199 : f32 = x_21.unity_ProbeVolumeParams.y;
    u_xlatb2 = (x_199 == 1.0f);
    let x_202 : vec3<f32> = vs_TEXCOORD2;
    let x_206 : vec4<f32> = x_21.unity_ProbeVolumeWorldToObject[1i];
    u_xlat10 = (vec3<f32>(x_202.y, x_202.y, x_202.y) * vec3<f32>(x_206.x, x_206.y, x_206.z));
    let x_210 : vec4<f32> = x_21.unity_ProbeVolumeWorldToObject[0i];
    let x_212 : vec3<f32> = vs_TEXCOORD2;
    let x_215 : vec3<f32> = u_xlat10;
    u_xlat10 = ((vec3<f32>(x_210.x, x_210.y, x_210.z) * vec3<f32>(x_212.x, x_212.x, x_212.x)) + x_215);
    let x_218 : vec4<f32> = x_21.unity_ProbeVolumeWorldToObject[2i];
    let x_220 : vec3<f32> = vs_TEXCOORD2;
    let x_223 : vec3<f32> = u_xlat10;
    u_xlat10 = ((vec3<f32>(x_218.x, x_218.y, x_218.z) * vec3<f32>(x_220.z, x_220.z, x_220.z)) + x_223);
    let x_225 : vec3<f32> = u_xlat10;
    let x_227 : vec4<f32> = x_21.unity_ProbeVolumeWorldToObject[3i];
    u_xlat10 = (x_225 + vec3<f32>(x_227.x, x_227.y, x_227.z));
    let x_230 : bool = u_xlatb2;
    if (x_230) {
      let x_235 : vec3<f32> = u_xlat10;
      x_232 = x_235;
    } else {
      let x_237 : vec3<f32> = vs_TEXCOORD2;
      x_232 = x_237;
    }
    let x_238 : vec3<f32> = x_232;
    let x_239 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_238.x, x_238.y, x_238.z, x_239.w);
    let x_241 : vec4<f32> = u_xlat2;
    let x_245 : vec3<f32> = x_21.unity_ProbeVolumeMin;
    let x_247 : vec3<f32> = (vec3<f32>(x_241.x, x_241.y, x_241.z) + -(x_245));
    let x_248 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_247.x, x_247.y, x_247.z, x_248.w);
    let x_250 : vec4<f32> = u_xlat2;
    let x_254 : vec3<f32> = x_21.unity_ProbeVolumeSizeInv;
    let x_255 : vec3<f32> = (vec3<f32>(x_250.x, x_250.y, x_250.z) * x_254);
    let x_256 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_256.x, x_255.x, x_255.y, x_255.z);
    let x_259 : f32 = u_xlat2.y;
    u_xlat10.x = ((x_259 * 0.25f) + 0.75f);
    let x_267 : f32 = x_21.unity_ProbeVolumeParams.z;
    u_xlat27 = ((x_267 * 0.5f) + 0.75f);
    let x_272 : f32 = u_xlat10.x;
    let x_273 : f32 = u_xlat27;
    u_xlat2.x = max(x_272, x_273);
    let x_284 : vec4<f32> = u_xlat2;
    let x_286 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_284.x, x_284.z, x_284.w));
    u_xlat2 = x_286;
  } else {
    u_xlat2.x = 1.0f;
    u_xlat2.y = 1.0f;
    u_xlat2.z = 1.0f;
    u_xlat2.w = 1.0f;
  }
  let x_292 : vec4<f32> = u_xlat2;
  let x_294 : vec4<f32> = x_21.unity_OcclusionMaskSelector;
  u_xlat2.x = dot(x_292, x_294);
  let x_298 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_298, 0.0f, 1.0f);
  let x_301 : vec3<f32> = vs_TEXCOORD2;
  let x_304 : vec4<f32> = x_21.unity_WorldToShadow[0i][1i];
  u_xlat7 = (vec4<f32>(x_301.y, x_301.y, x_301.y, x_301.y) * x_304);
  let x_307 : vec4<f32> = x_21.unity_WorldToShadow[0i][0i];
  let x_308 : vec3<f32> = vs_TEXCOORD2;
  let x_311 : vec4<f32> = u_xlat7;
  u_xlat7 = ((x_307 * vec4<f32>(x_308.x, x_308.x, x_308.x, x_308.x)) + x_311);
  let x_314 : vec4<f32> = x_21.unity_WorldToShadow[0i][2i];
  let x_315 : vec3<f32> = vs_TEXCOORD2;
  let x_318 : vec4<f32> = u_xlat7;
  u_xlat7 = ((x_314 * vec4<f32>(x_315.z, x_315.z, x_315.z, x_315.z)) + x_318);
  let x_320 : vec4<f32> = u_xlat7;
  let x_322 : vec4<f32> = x_21.unity_WorldToShadow[0i][3i];
  u_xlat7 = (x_320 + x_322);
  let x_324 : vec4<f32> = u_xlat7;
  let x_326 : vec4<f32> = u_xlat7;
  u_xlat10 = (vec3<f32>(x_324.x, x_324.y, x_324.z) / vec3<f32>(x_326.w, x_326.w, x_326.w));
  let x_330 : vec3<f32> = u_xlat10;
  let x_331 : vec2<f32> = vec2<f32>(x_330.x, x_330.y);
  let x_333 : f32 = u_xlat10.z;
  txVec0 = vec3<f32>(x_331.x, x_331.y, x_333);
  let x_345 : vec3<f32> = txVec0;
  let x_347 : f32 = textureSampleCompareLevel(x_ShadowMapTexture, sampler_ShadowMapTexture, x_345.xy, x_345.z);
  u_xlat10.x = x_347;
  let x_351 : f32 = x_21.x_LightShadowData.x;
  u_xlat18 = (-(x_351) + 1.0f);
  let x_355 : f32 = u_xlat10.x;
  let x_356 : f32 = u_xlat18;
  let x_359 : f32 = x_21.x_LightShadowData.x;
  u_xlat10.x = ((x_355 * x_356) + x_359);
  let x_363 : f32 = u_xlat10.x;
  let x_366 : f32 = u_xlat2.x;
  u_xlat2.x = (-(x_363) + x_366);
  let x_369 : f32 = u_xlat25;
  let x_371 : f32 = u_xlat2.x;
  let x_374 : f32 = u_xlat10.x;
  u_xlat25 = ((x_369 * x_371) + x_374);
  let x_377 : f32 = u_xlat6.z;
  u_xlatb2 = (0.0f < x_377);
  let x_379 : bool = u_xlatb2;
  u_xlat2.x = select(0.0f, 1.0f, x_379);
  let x_382 : vec4<f32> = u_xlat6;
  let x_384 : vec4<f32> = u_xlat6;
  let x_386 : vec2<f32> = (vec2<f32>(x_382.x, x_382.y) / vec2<f32>(x_384.w, x_384.w));
  let x_387 : vec3<f32> = u_xlat10;
  u_xlat10 = vec3<f32>(x_386.x, x_386.y, x_387.z);
  let x_389 : vec3<f32> = u_xlat10;
  let x_392 : vec2<f32> = (vec2<f32>(x_389.x, x_389.y) + vec2<f32>(0.5f, 0.5f));
  let x_393 : vec3<f32> = u_xlat10;
  u_xlat10 = vec3<f32>(x_392.x, x_392.y, x_393.z);
  let x_400 : vec3<f32> = u_xlat10;
  let x_402 : vec4<f32> = textureSample(x_LightTexture0, sampler_LightTexture0, vec2<f32>(x_400.x, x_400.y));
  u_xlat10.x = x_402.w;
  let x_406 : f32 = u_xlat10.x;
  let x_408 : f32 = u_xlat2.x;
  u_xlat2.x = (x_406 * x_408);
  let x_411 : vec4<f32> = u_xlat6;
  let x_413 : vec4<f32> = u_xlat6;
  u_xlat10.x = dot(vec3<f32>(x_411.x, x_411.y, x_411.z), vec3<f32>(x_413.x, x_413.y, x_413.z));
  let x_422 : vec3<f32> = u_xlat10;
  let x_424 : vec4<f32> = textureSample(x_LightTextureB0, sampler_LightTextureB0, vec2<f32>(x_422.x, x_422.x));
  u_xlat10.x = x_424.x;
  let x_428 : f32 = u_xlat10.x;
  let x_430 : f32 = u_xlat2.x;
  u_xlat2.x = (x_428 * x_430);
  let x_433 : f32 = u_xlat25;
  let x_435 : f32 = u_xlat2.x;
  u_xlat25 = (x_433 * x_435);
  let x_437 : f32 = u_xlat25;
  let x_441 : vec4<f32> = x_21.x_LightColor0;
  let x_443 : vec3<f32> = (vec3<f32>(x_437, x_437, x_437) * vec3<f32>(x_441.x, x_441.y, x_441.z));
  let x_444 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_443.x, x_443.y, x_443.z, x_444.w);
  let x_447 : vec3<f32> = vs_TEXCOORD1;
  let x_448 : vec3<f32> = vs_TEXCOORD1;
  u_xlat25 = dot(x_447, x_448);
  let x_450 : f32 = u_xlat25;
  u_xlat25 = inverseSqrt(x_450);
  let x_452 : f32 = u_xlat25;
  let x_454 : vec3<f32> = vs_TEXCOORD1;
  let x_455 : vec3<f32> = (vec3<f32>(x_452, x_452, x_452) * x_454);
  let x_456 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_455.x, x_455.y, x_455.z, x_456.w);
  let x_458 : vec3<f32> = u_xlat4;
  let x_459 : vec4<f32> = vs_COLOR0;
  u_xlat4 = ((x_458 * vec3<f32>(x_459.x, x_459.y, x_459.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_467 : f32 = x_21.x_Metallic;
  let x_469 : f32 = x_21.x_Metallic;
  let x_471 : f32 = x_21.x_Metallic;
  let x_472 : vec3<f32> = vec3<f32>(x_467, x_469, x_471);
  let x_477 : vec3<f32> = u_xlat4;
  u_xlat4 = ((vec3<f32>(x_472.x, x_472.y, x_472.z) * x_477) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_483 : f32 = x_21.x_Metallic;
  u_xlat25 = ((-(x_483) * 0.959999979f) + 0.959999979f);
  let x_488 : f32 = u_xlat25;
  let x_490 : vec3<f32> = u_xlat5;
  u_xlat5 = (vec3<f32>(x_488, x_488, x_488) * x_490);
  let x_494 : f32 = x_21.x_Glossiness;
  u_xlat25 = (-(x_494) + 1.0f);
  let x_497 : vec3<f32> = u_xlat0;
  let x_498 : f32 = u_xlat24;
  let x_501 : vec3<f32> = u_xlat3;
  u_xlat0 = ((x_497 * vec3<f32>(x_498, x_498, x_498)) + x_501);
  let x_503 : vec3<f32> = u_xlat0;
  let x_504 : vec3<f32> = u_xlat0;
  u_xlat24 = dot(x_503, x_504);
  let x_506 : f32 = u_xlat24;
  u_xlat24 = max(x_506, 0.001f);
  let x_509 : f32 = u_xlat24;
  u_xlat24 = inverseSqrt(x_509);
  let x_511 : f32 = u_xlat24;
  let x_513 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_511, x_511, x_511) * x_513);
  let x_515 : vec4<f32> = u_xlat6;
  let x_517 : vec3<f32> = u_xlat3;
  u_xlat24 = dot(vec3<f32>(x_515.x, x_515.y, x_515.z), x_517);
  let x_520 : vec4<f32> = u_xlat6;
  let x_522 : vec3<f32> = u_xlat1;
  u_xlat26 = dot(vec3<f32>(x_520.x, x_520.y, x_520.z), x_522);
  let x_524 : f32 = u_xlat26;
  u_xlat26 = clamp(x_524, 0.0f, 1.0f);
  let x_526 : vec4<f32> = u_xlat6;
  let x_528 : vec3<f32> = u_xlat0;
  u_xlat3.x = dot(vec3<f32>(x_526.x, x_526.y, x_526.z), x_528);
  let x_532 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_532, 0.0f, 1.0f);
  let x_535 : vec3<f32> = u_xlat1;
  let x_536 : vec3<f32> = u_xlat0;
  u_xlat0.x = dot(x_535, x_536);
  let x_540 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_540, 0.0f, 1.0f);
  let x_545 : f32 = u_xlat0.x;
  let x_547 : f32 = u_xlat0.x;
  u_xlat8.x = (x_545 * x_547);
  let x_550 : vec3<f32> = u_xlat8;
  let x_552 : f32 = u_xlat25;
  u_xlat8.x = dot(vec2<f32>(x_550.x, x_550.x), vec2<f32>(x_552, x_552));
  let x_557 : f32 = u_xlat8.x;
  u_xlat8.x = (x_557 + -0.5f);
  let x_562 : f32 = u_xlat26;
  u_xlat16 = (-(x_562) + 1.0f);
  let x_565 : f32 = u_xlat16;
  let x_566 : f32 = u_xlat16;
  u_xlat1.x = (x_565 * x_566);
  let x_570 : f32 = u_xlat1.x;
  let x_572 : f32 = u_xlat1.x;
  u_xlat1.x = (x_570 * x_572);
  let x_575 : f32 = u_xlat16;
  let x_577 : f32 = u_xlat1.x;
  u_xlat16 = (x_575 * x_577);
  let x_580 : f32 = u_xlat8.x;
  let x_581 : f32 = u_xlat16;
  u_xlat16 = ((x_580 * x_581) + 1.0f);
  let x_584 : f32 = u_xlat24;
  u_xlat1.x = (-(abs(x_584)) + 1.0f);
  let x_591 : f32 = u_xlat1.x;
  let x_593 : f32 = u_xlat1.x;
  u_xlat9 = (x_591 * x_593);
  let x_595 : f32 = u_xlat9;
  let x_596 : f32 = u_xlat9;
  u_xlat9 = (x_595 * x_596);
  let x_599 : f32 = u_xlat1.x;
  let x_600 : f32 = u_xlat9;
  u_xlat1.x = (x_599 * x_600);
  let x_604 : f32 = u_xlat8.x;
  let x_606 : f32 = u_xlat1.x;
  u_xlat8.x = ((x_604 * x_606) + 1.0f);
  let x_611 : f32 = u_xlat8.x;
  let x_612 : f32 = u_xlat16;
  u_xlat8.x = (x_611 * x_612);
  let x_615 : f32 = u_xlat25;
  let x_616 : f32 = u_xlat25;
  u_xlat16 = (x_615 * x_616);
  let x_618 : f32 = u_xlat16;
  u_xlat16 = max(x_618, 0.002f);
  let x_621 : f32 = u_xlat16;
  u_xlat1.x = (-(x_621) + 1.0f);
  let x_625 : f32 = u_xlat24;
  let x_628 : f32 = u_xlat1.x;
  let x_630 : f32 = u_xlat16;
  u_xlat9 = ((abs(x_625) * x_628) + x_630);
  let x_632 : f32 = u_xlat26;
  let x_634 : f32 = u_xlat1.x;
  let x_636 : f32 = u_xlat16;
  u_xlat1.x = ((x_632 * x_634) + x_636);
  let x_639 : f32 = u_xlat24;
  let x_642 : f32 = u_xlat1.x;
  u_xlat24 = (abs(x_639) * x_642);
  let x_644 : f32 = u_xlat26;
  let x_645 : f32 = u_xlat9;
  let x_647 : f32 = u_xlat24;
  u_xlat24 = ((x_644 * x_645) + x_647);
  let x_649 : f32 = u_xlat24;
  u_xlat24 = (x_649 + 0.00001f);
  let x_652 : f32 = u_xlat24;
  u_xlat24 = (0.5f / x_652);
  let x_654 : f32 = u_xlat16;
  let x_655 : f32 = u_xlat16;
  u_xlat16 = (x_654 * x_655);
  let x_658 : f32 = u_xlat3.x;
  let x_659 : f32 = u_xlat16;
  let x_662 : f32 = u_xlat3.x;
  u_xlat1.x = ((x_658 * x_659) + -(x_662));
  let x_667 : f32 = u_xlat1.x;
  let x_669 : f32 = u_xlat3.x;
  u_xlat1.x = ((x_667 * x_669) + 1.0f);
  let x_673 : f32 = u_xlat16;
  u_xlat16 = (x_673 * 0.318309873f);
  let x_677 : f32 = u_xlat1.x;
  let x_679 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_677 * x_679) + 0.0000001f);
  let x_684 : f32 = u_xlat16;
  let x_686 : f32 = u_xlat1.x;
  u_xlat16 = (x_684 / x_686);
  let x_688 : f32 = u_xlat16;
  let x_689 : f32 = u_xlat24;
  u_xlat8.y = (x_688 * x_689);
  let x_692 : f32 = u_xlat26;
  let x_694 : vec3<f32> = u_xlat8;
  let x_696 : vec2<f32> = (vec2<f32>(x_692, x_692) * vec2<f32>(x_694.x, x_694.y));
  let x_697 : vec3<f32> = u_xlat8;
  u_xlat8 = vec3<f32>(x_696.x, x_696.y, x_697.z);
  let x_700 : f32 = u_xlat8.y;
  u_xlat16 = (x_700 * 3.141592741f);
  let x_703 : f32 = u_xlat16;
  u_xlat16 = max(x_703, 0.0f);
  let x_705 : vec3<f32> = u_xlat4;
  let x_706 : vec3<f32> = u_xlat4;
  u_xlat24 = dot(x_705, x_706);
  let x_709 : f32 = u_xlat24;
  u_xlatb24 = !((x_709 == 0.0f));
  let x_711 : bool = u_xlatb24;
  u_xlat24 = select(0.0f, 1.0f, x_711);
  let x_713 : f32 = u_xlat24;
  let x_714 : f32 = u_xlat16;
  u_xlat16 = (x_713 * x_714);
  let x_716 : vec3<f32> = u_xlat8;
  let x_718 : vec4<f32> = u_xlat2;
  u_xlat1 = (vec3<f32>(x_716.x, x_716.x, x_716.x) * vec3<f32>(x_718.x, x_718.y, x_718.z));
  let x_721 : vec4<f32> = u_xlat2;
  let x_723 : f32 = u_xlat16;
  u_xlat8 = (vec3<f32>(x_721.x, x_721.y, x_721.z) * vec3<f32>(x_723, x_723, x_723));
  let x_727 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_727) + 1.0f);
  let x_732 : f32 = u_xlat0.x;
  let x_734 : f32 = u_xlat0.x;
  u_xlat25 = (x_732 * x_734);
  let x_736 : f32 = u_xlat25;
  let x_737 : f32 = u_xlat25;
  u_xlat25 = (x_736 * x_737);
  let x_740 : f32 = u_xlat0.x;
  let x_741 : f32 = u_xlat25;
  u_xlat0.x = (x_740 * x_741);
  let x_744 : vec3<f32> = u_xlat4;
  let x_747 : vec3<f32> = (-(x_744) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_748 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_747.x, x_747.y, x_747.z, x_748.w);
  let x_750 : vec4<f32> = u_xlat2;
  let x_752 : vec3<f32> = u_xlat0;
  let x_755 : vec3<f32> = u_xlat4;
  let x_756 : vec3<f32> = ((vec3<f32>(x_750.x, x_750.y, x_750.z) * vec3<f32>(x_752.x, x_752.x, x_752.x)) + x_755);
  let x_757 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_756.x, x_756.y, x_756.z, x_757.w);
  let x_759 : vec3<f32> = u_xlat8;
  let x_760 : vec4<f32> = u_xlat2;
  u_xlat0 = (x_759 * vec3<f32>(x_760.x, x_760.y, x_760.z));
  let x_765 : vec3<f32> = u_xlat5;
  let x_766 : vec3<f32> = u_xlat1;
  let x_768 : vec3<f32> = u_xlat0;
  let x_769 : vec3<f32> = ((x_765 * x_766) + x_768);
  let x_770 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_769.x, x_769.y, x_769.z, x_770.w);
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

