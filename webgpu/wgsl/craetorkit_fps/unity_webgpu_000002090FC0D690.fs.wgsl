struct PGlobals {
  x_Time : vec4<f32>,
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
  x_NormalSacle : f32,
  x_MovementSpeed : f32,
}

var<private> vs_TEXCOORD4 : vec3<f32>;

@group(1) @binding(0) var<uniform> x_18 : PGlobals;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(8) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> vs_COLOR0 : vec4<f32>;

@group(0) @binding(1) var x_Normal : texture_2d<f32>;

@group(0) @binding(9) var sampler_Normal : sampler;

@group(0) @binding(3) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(5) var samplerunity_ProbeVolumeSH : sampler;

@group(0) @binding(4) var x_ShadowMapTexture : texture_depth_cube;

@group(0) @binding(6) var sampler_ShadowMapTexture : sampler_comparison;

@group(0) @binding(2) var x_LightTexture0 : texture_2d<f32>;

@group(0) @binding(7) var sampler_LightTexture0 : sampler;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec3<f32>;
  var u_xlat27 : f32;
  var u_xlat1 : vec3<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat28 : f32;
  var u_xlat3 : vec3<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec3<f32>;
  var u_xlat6 : vec3<f32>;
  var u_xlatb28 : bool;
  var u_xlat7 : vec3<f32>;
  var u_xlat8 : vec3<f32>;
  var u_xlatb2 : bool;
  var u_xlat11 : vec3<f32>;
  var x_327 : vec3<f32>;
  var u_xlat30 : f32;
  var txVec0 : vec4<f32>;
  var u_xlat20 : f32;
  var u_xlat29 : f32;
  var u_xlat9 : vec3<f32>;
  var u_xlat18 : f32;
  var u_xlat10 : f32;
  var u_xlatb27 : bool;
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
  let x_77 : vec4<f32> = vs_TEXCOORD0;
  let x_79 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_77.x, x_77.y));
  u_xlat4 = x_79;
  let x_80 : vec4<f32> = u_xlat4;
  let x_84 : vec4<f32> = x_18.x_Color;
  let x_86 : vec3<f32> = (vec3<f32>(x_80.x, x_80.y, x_80.z) * vec3<f32>(x_84.x, x_84.y, x_84.z));
  let x_87 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_86.x, x_86.y, x_86.z, x_87.w);
  let x_90 : vec4<f32> = u_xlat4;
  let x_93 : vec4<f32> = vs_COLOR0;
  u_xlat5 = (vec3<f32>(x_90.x, x_90.y, x_90.z) * vec3<f32>(x_93.x, x_93.y, x_93.z));
  let x_102 : f32 = x_18.x_Time.x;
  let x_105 : f32 = x_18.x_MovementSpeed;
  let x_110 : f32 = vs_TEXCOORD0.z;
  u_xlat6.x = ((x_102 * x_105) + x_110);
  let x_114 : f32 = x_18.x_Time.x;
  let x_117 : f32 = x_18.x_MovementSpeed;
  let x_121 : f32 = vs_TEXCOORD0.w;
  u_xlat6.y = ((-(x_114) * x_117) + x_121);
  let x_130 : vec3<f32> = u_xlat6;
  let x_132 : vec4<f32> = textureSample(x_Normal, sampler_Normal, vec2<f32>(x_130.x, x_130.y));
  u_xlat6 = vec3<f32>(x_132.x, x_132.y, x_132.w);
  let x_135 : f32 = u_xlat6.z;
  let x_137 : f32 = u_xlat6.x;
  u_xlat6.x = (x_135 * x_137);
  let x_140 : vec3<f32> = u_xlat6;
  let x_147 : vec2<f32> = ((vec2<f32>(x_140.x, x_140.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_148 : vec3<f32> = u_xlat6;
  u_xlat6 = vec3<f32>(x_147.x, x_147.y, x_148.z);
  let x_150 : vec3<f32> = u_xlat6;
  let x_154 : f32 = x_18.x_NormalSacle;
  let x_156 : vec2<f32> = (vec2<f32>(x_150.x, x_150.y) * vec2<f32>(x_154, x_154));
  let x_157 : vec3<f32> = u_xlat6;
  u_xlat6 = vec3<f32>(x_156.x, x_156.y, x_157.z);
  let x_159 : vec3<f32> = u_xlat6;
  let x_161 : vec3<f32> = u_xlat6;
  u_xlat28 = dot(vec2<f32>(x_159.x, x_159.y), vec2<f32>(x_161.x, x_161.y));
  let x_164 : f32 = u_xlat28;
  u_xlat28 = min(x_164, 1.0f);
  let x_167 : f32 = u_xlat28;
  u_xlat28 = (-(x_167) + 1.0f);
  let x_170 : f32 = u_xlat28;
  u_xlat6.z = sqrt(x_170);
  let x_174 : f32 = vs_COLOR0.w;
  u_xlat28 = (-(x_174) + 1.0f);
  let x_178 : f32 = u_xlat4.w;
  let x_180 : f32 = x_18.x_Color.w;
  let x_182 : f32 = u_xlat28;
  u_xlat28 = ((x_178 * x_180) + -(x_182));
  let x_188 : f32 = u_xlat28;
  u_xlatb28 = (x_188 < 0.0f);
  let x_191 : bool = u_xlatb28;
  if (((select(0i, 1i, x_191) * -1i) != 0i)) {
    discard;
  }
  let x_200 : vec3<f32> = vs_TEXCOORD4;
  let x_204 : vec4<f32> = x_18.unity_WorldToLight[1i];
  u_xlat7 = (vec3<f32>(x_200.y, x_200.y, x_200.y) * vec3<f32>(x_204.x, x_204.y, x_204.z));
  let x_208 : vec4<f32> = x_18.unity_WorldToLight[0i];
  let x_210 : vec3<f32> = vs_TEXCOORD4;
  let x_213 : vec3<f32> = u_xlat7;
  u_xlat7 = ((vec3<f32>(x_208.x, x_208.y, x_208.z) * vec3<f32>(x_210.x, x_210.x, x_210.x)) + x_213);
  let x_216 : vec4<f32> = x_18.unity_WorldToLight[2i];
  let x_218 : vec3<f32> = vs_TEXCOORD4;
  let x_221 : vec3<f32> = u_xlat7;
  u_xlat7 = ((vec3<f32>(x_216.x, x_216.y, x_216.z) * vec3<f32>(x_218.z, x_218.z, x_218.z)) + x_221);
  let x_223 : vec3<f32> = u_xlat7;
  let x_226 : vec4<f32> = x_18.unity_WorldToLight[3i];
  u_xlat7 = (x_223 + vec3<f32>(x_226.x, x_226.y, x_226.z));
  let x_232 : f32 = x_18.unity_MatrixV[0i].z;
  u_xlat8.x = x_232;
  let x_235 : f32 = x_18.unity_MatrixV[1i].z;
  u_xlat8.y = x_235;
  let x_238 : f32 = x_18.unity_MatrixV[2i].z;
  u_xlat8.z = x_238;
  let x_240 : vec4<f32> = u_xlat2;
  let x_242 : vec3<f32> = u_xlat8;
  u_xlat28 = dot(vec3<f32>(x_240.x, x_240.y, x_240.z), x_242);
  let x_244 : vec3<f32> = vs_TEXCOORD4;
  let x_247 : vec4<f32> = x_18.unity_ShadowFadeCenterAndType;
  let x_250 : vec3<f32> = (x_244 + -(vec3<f32>(x_247.x, x_247.y, x_247.z)));
  let x_251 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_250.x, x_250.y, x_250.z, x_251.w);
  let x_253 : vec4<f32> = u_xlat2;
  let x_255 : vec4<f32> = u_xlat2;
  u_xlat2.x = dot(vec3<f32>(x_253.x, x_253.y, x_253.z), vec3<f32>(x_255.x, x_255.y, x_255.z));
  let x_260 : f32 = u_xlat2.x;
  u_xlat2.x = sqrt(x_260);
  let x_263 : f32 = u_xlat28;
  let x_266 : f32 = u_xlat2.x;
  u_xlat2.x = (-(x_263) + x_266);
  let x_270 : f32 = x_18.unity_ShadowFadeCenterAndType.w;
  let x_272 : f32 = u_xlat2.x;
  let x_274 : f32 = u_xlat28;
  u_xlat28 = ((x_270 * x_272) + x_274);
  let x_276 : f32 = u_xlat28;
  let x_279 : f32 = x_18.x_LightShadowData.z;
  let x_282 : f32 = x_18.x_LightShadowData.w;
  u_xlat28 = ((x_276 * x_279) + x_282);
  let x_284 : f32 = u_xlat28;
  u_xlat28 = clamp(x_284, 0.0f, 1.0f);
  let x_289 : f32 = x_18.unity_ProbeVolumeParams.x;
  u_xlatb2 = (x_289 == 1.0f);
  let x_291 : bool = u_xlatb2;
  if (x_291) {
    let x_295 : f32 = x_18.unity_ProbeVolumeParams.y;
    u_xlatb2 = (x_295 == 1.0f);
    let x_298 : vec3<f32> = vs_TEXCOORD4;
    let x_302 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[1i];
    u_xlat11 = (vec3<f32>(x_298.y, x_298.y, x_298.y) * vec3<f32>(x_302.x, x_302.y, x_302.z));
    let x_306 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[0i];
    let x_308 : vec3<f32> = vs_TEXCOORD4;
    let x_311 : vec3<f32> = u_xlat11;
    u_xlat11 = ((vec3<f32>(x_306.x, x_306.y, x_306.z) * vec3<f32>(x_308.x, x_308.x, x_308.x)) + x_311);
    let x_314 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[2i];
    let x_316 : vec3<f32> = vs_TEXCOORD4;
    let x_319 : vec3<f32> = u_xlat11;
    u_xlat11 = ((vec3<f32>(x_314.x, x_314.y, x_314.z) * vec3<f32>(x_316.z, x_316.z, x_316.z)) + x_319);
    let x_321 : vec3<f32> = u_xlat11;
    let x_323 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[3i];
    u_xlat11 = (x_321 + vec3<f32>(x_323.x, x_323.y, x_323.z));
    let x_326 : bool = u_xlatb2;
    if (x_326) {
      let x_330 : vec3<f32> = u_xlat11;
      x_327 = x_330;
    } else {
      let x_332 : vec3<f32> = vs_TEXCOORD4;
      x_327 = x_332;
    }
    let x_333 : vec3<f32> = x_327;
    let x_334 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_333.x, x_333.y, x_333.z, x_334.w);
    let x_336 : vec4<f32> = u_xlat2;
    let x_340 : vec3<f32> = x_18.unity_ProbeVolumeMin;
    let x_342 : vec3<f32> = (vec3<f32>(x_336.x, x_336.y, x_336.z) + -(x_340));
    let x_343 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_342.x, x_342.y, x_342.z, x_343.w);
    let x_345 : vec4<f32> = u_xlat2;
    let x_349 : vec3<f32> = x_18.unity_ProbeVolumeSizeInv;
    let x_350 : vec3<f32> = (vec3<f32>(x_345.x, x_345.y, x_345.z) * x_349);
    let x_351 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_351.x, x_350.x, x_350.y, x_350.z);
    let x_354 : f32 = u_xlat2.y;
    u_xlat11.x = ((x_354 * 0.25f) + 0.75f);
    let x_362 : f32 = x_18.unity_ProbeVolumeParams.z;
    u_xlat30 = ((x_362 * 0.5f) + 0.75f);
    let x_367 : f32 = u_xlat11.x;
    let x_368 : f32 = u_xlat30;
    u_xlat2.x = max(x_367, x_368);
    let x_379 : vec4<f32> = u_xlat2;
    let x_381 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_379.x, x_379.z, x_379.w));
    u_xlat2 = x_381;
  } else {
    u_xlat2.x = 1.0f;
    u_xlat2.y = 1.0f;
    u_xlat2.z = 1.0f;
    u_xlat2.w = 1.0f;
  }
  let x_387 : vec4<f32> = u_xlat2;
  let x_390 : vec4<f32> = x_18.unity_OcclusionMaskSelector;
  u_xlat2.x = dot(x_387, x_390);
  let x_394 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_394, 0.0f, 1.0f);
  let x_397 : vec3<f32> = vs_TEXCOORD4;
  let x_399 : vec4<f32> = x_18.x_LightPositionRange;
  u_xlat11 = (x_397 + -(vec3<f32>(x_399.x, x_399.y, x_399.z)));
  let x_404 : f32 = u_xlat11.y;
  let x_407 : f32 = u_xlat11.x;
  u_xlat30 = max(abs(x_404), abs(x_407));
  let x_411 : f32 = u_xlat11.z;
  let x_413 : f32 = u_xlat30;
  u_xlat30 = max(abs(x_411), x_413);
  let x_415 : f32 = u_xlat30;
  let x_418 : f32 = x_18.x_LightProjectionParams.z;
  u_xlat30 = (x_415 + -(x_418));
  let x_421 : f32 = u_xlat30;
  u_xlat30 = max(x_421, 0.00001f);
  let x_424 : f32 = u_xlat30;
  let x_426 : f32 = x_18.x_LightProjectionParams.w;
  u_xlat30 = (x_424 * x_426);
  let x_429 : f32 = x_18.x_LightProjectionParams.y;
  let x_430 : f32 = u_xlat30;
  u_xlat30 = (x_429 / x_430);
  let x_432 : f32 = u_xlat30;
  let x_434 : f32 = x_18.x_LightProjectionParams.x;
  u_xlat30 = (x_432 + -(x_434));
  let x_437 : f32 = u_xlat30;
  u_xlat30 = (-(x_437) + 1.0f);
  let x_441 : vec3<f32> = u_xlat11;
  let x_442 : f32 = u_xlat30;
  txVec0 = vec4<f32>(x_441.x, x_441.y, x_441.z, x_442);
  let x_455 : vec4<f32> = txVec0;
  let x_457 : f32 = textureSampleCompare(x_ShadowMapTexture, sampler_ShadowMapTexture, x_455.xyz, x_455.w);
  u_xlat11.x = x_457;
  let x_461 : f32 = x_18.x_LightShadowData.x;
  u_xlat20 = (-(x_461) + 1.0f);
  let x_465 : f32 = u_xlat11.x;
  let x_466 : f32 = u_xlat20;
  let x_469 : f32 = x_18.x_LightShadowData.x;
  u_xlat11.x = ((x_465 * x_466) + x_469);
  let x_473 : f32 = u_xlat11.x;
  let x_476 : f32 = u_xlat2.x;
  u_xlat2.x = (-(x_473) + x_476);
  let x_479 : f32 = u_xlat28;
  let x_481 : f32 = u_xlat2.x;
  let x_484 : f32 = u_xlat11.x;
  u_xlat28 = ((x_479 * x_481) + x_484);
  let x_486 : vec3<f32> = u_xlat7;
  let x_487 : vec3<f32> = u_xlat7;
  u_xlat2.x = dot(x_486, x_487);
  let x_495 : vec4<f32> = u_xlat2;
  let x_497 : vec4<f32> = textureSample(x_LightTexture0, sampler_LightTexture0, vec2<f32>(x_495.x, x_495.x));
  u_xlat2.x = x_497.x;
  let x_500 : f32 = u_xlat28;
  let x_502 : f32 = u_xlat2.x;
  u_xlat28 = (x_500 * x_502);
  let x_505 : vec3<f32> = vs_TEXCOORD1;
  let x_506 : vec3<f32> = u_xlat6;
  u_xlat2.x = dot(x_505, x_506);
  let x_510 : vec3<f32> = vs_TEXCOORD2;
  let x_511 : vec3<f32> = u_xlat6;
  u_xlat2.y = dot(x_510, x_511);
  let x_515 : vec3<f32> = vs_TEXCOORD3;
  let x_516 : vec3<f32> = u_xlat6;
  u_xlat2.z = dot(x_515, x_516);
  let x_520 : vec4<f32> = u_xlat2;
  let x_522 : vec4<f32> = u_xlat2;
  u_xlat29 = dot(vec3<f32>(x_520.x, x_520.y, x_520.z), vec3<f32>(x_522.x, x_522.y, x_522.z));
  let x_525 : f32 = u_xlat29;
  u_xlat29 = inverseSqrt(x_525);
  let x_527 : f32 = u_xlat29;
  let x_529 : vec4<f32> = u_xlat2;
  let x_531 : vec3<f32> = (vec3<f32>(x_527, x_527, x_527) * vec3<f32>(x_529.x, x_529.y, x_529.z));
  let x_532 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_531.x, x_531.y, x_531.z, x_532.w);
  let x_534 : f32 = u_xlat28;
  let x_538 : vec4<f32> = x_18.x_LightColor0;
  u_xlat6 = (vec3<f32>(x_534, x_534, x_534) * vec3<f32>(x_538.x, x_538.y, x_538.z));
  let x_541 : vec4<f32> = u_xlat4;
  let x_543 : vec4<f32> = vs_COLOR0;
  let x_548 : vec3<f32> = ((vec3<f32>(x_541.x, x_541.y, x_541.z) * vec3<f32>(x_543.x, x_543.y, x_543.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_549 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_548.x, x_548.y, x_548.z, x_549.w);
  let x_553 : f32 = x_18.x_Metallic;
  let x_555 : f32 = x_18.x_Metallic;
  let x_557 : f32 = x_18.x_Metallic;
  let x_558 : vec3<f32> = vec3<f32>(x_553, x_555, x_557);
  let x_563 : vec4<f32> = u_xlat4;
  let x_568 : vec3<f32> = ((vec3<f32>(x_558.x, x_558.y, x_558.z) * vec3<f32>(x_563.x, x_563.y, x_563.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_569 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_568.x, x_568.y, x_568.z, x_569.w);
  let x_572 : f32 = x_18.x_Metallic;
  u_xlat28 = ((-(x_572) * 0.959999979f) + 0.959999979f);
  let x_577 : f32 = u_xlat28;
  let x_579 : vec3<f32> = u_xlat5;
  u_xlat5 = (vec3<f32>(x_577, x_577, x_577) * x_579);
  let x_583 : f32 = x_18.x_Glossiness;
  u_xlat28 = (-(x_583) + 1.0f);
  let x_586 : vec3<f32> = u_xlat0;
  let x_587 : f32 = u_xlat27;
  let x_590 : vec3<f32> = u_xlat3;
  u_xlat0 = ((x_586 * vec3<f32>(x_587, x_587, x_587)) + x_590);
  let x_592 : vec3<f32> = u_xlat0;
  let x_593 : vec3<f32> = u_xlat0;
  u_xlat27 = dot(x_592, x_593);
  let x_595 : f32 = u_xlat27;
  u_xlat27 = max(x_595, 0.001f);
  let x_598 : f32 = u_xlat27;
  u_xlat27 = inverseSqrt(x_598);
  let x_600 : f32 = u_xlat27;
  let x_602 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_600, x_600, x_600) * x_602);
  let x_604 : vec4<f32> = u_xlat2;
  let x_606 : vec3<f32> = u_xlat3;
  u_xlat27 = dot(vec3<f32>(x_604.x, x_604.y, x_604.z), x_606);
  let x_608 : vec4<f32> = u_xlat2;
  let x_610 : vec3<f32> = u_xlat1;
  u_xlat29 = dot(vec3<f32>(x_608.x, x_608.y, x_608.z), x_610);
  let x_612 : f32 = u_xlat29;
  u_xlat29 = clamp(x_612, 0.0f, 1.0f);
  let x_614 : vec4<f32> = u_xlat2;
  let x_616 : vec3<f32> = u_xlat0;
  u_xlat2.x = dot(vec3<f32>(x_614.x, x_614.y, x_614.z), x_616);
  let x_620 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_620, 0.0f, 1.0f);
  let x_623 : vec3<f32> = u_xlat1;
  let x_624 : vec3<f32> = u_xlat0;
  u_xlat0.x = dot(x_623, x_624);
  let x_628 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_628, 0.0f, 1.0f);
  let x_633 : f32 = u_xlat0.x;
  let x_635 : f32 = u_xlat0.x;
  u_xlat9.x = (x_633 * x_635);
  let x_638 : vec3<f32> = u_xlat9;
  let x_640 : f32 = u_xlat28;
  u_xlat9.x = dot(vec2<f32>(x_638.x, x_638.x), vec2<f32>(x_640, x_640));
  let x_645 : f32 = u_xlat9.x;
  u_xlat9.x = (x_645 + -0.5f);
  let x_650 : f32 = u_xlat29;
  u_xlat18 = (-(x_650) + 1.0f);
  let x_653 : f32 = u_xlat18;
  let x_654 : f32 = u_xlat18;
  u_xlat1.x = (x_653 * x_654);
  let x_658 : f32 = u_xlat1.x;
  let x_660 : f32 = u_xlat1.x;
  u_xlat1.x = (x_658 * x_660);
  let x_663 : f32 = u_xlat18;
  let x_665 : f32 = u_xlat1.x;
  u_xlat18 = (x_663 * x_665);
  let x_668 : f32 = u_xlat9.x;
  let x_669 : f32 = u_xlat18;
  u_xlat18 = ((x_668 * x_669) + 1.0f);
  let x_672 : f32 = u_xlat27;
  u_xlat1.x = (-(abs(x_672)) + 1.0f);
  let x_679 : f32 = u_xlat1.x;
  let x_681 : f32 = u_xlat1.x;
  u_xlat10 = (x_679 * x_681);
  let x_683 : f32 = u_xlat10;
  let x_684 : f32 = u_xlat10;
  u_xlat10 = (x_683 * x_684);
  let x_687 : f32 = u_xlat1.x;
  let x_688 : f32 = u_xlat10;
  u_xlat1.x = (x_687 * x_688);
  let x_692 : f32 = u_xlat9.x;
  let x_694 : f32 = u_xlat1.x;
  u_xlat9.x = ((x_692 * x_694) + 1.0f);
  let x_699 : f32 = u_xlat9.x;
  let x_700 : f32 = u_xlat18;
  u_xlat9.x = (x_699 * x_700);
  let x_703 : f32 = u_xlat28;
  let x_704 : f32 = u_xlat28;
  u_xlat18 = (x_703 * x_704);
  let x_706 : f32 = u_xlat18;
  u_xlat18 = max(x_706, 0.002f);
  let x_709 : f32 = u_xlat18;
  u_xlat1.x = (-(x_709) + 1.0f);
  let x_713 : f32 = u_xlat27;
  let x_716 : f32 = u_xlat1.x;
  let x_718 : f32 = u_xlat18;
  u_xlat10 = ((abs(x_713) * x_716) + x_718);
  let x_720 : f32 = u_xlat29;
  let x_722 : f32 = u_xlat1.x;
  let x_724 : f32 = u_xlat18;
  u_xlat1.x = ((x_720 * x_722) + x_724);
  let x_727 : f32 = u_xlat27;
  let x_730 : f32 = u_xlat1.x;
  u_xlat27 = (abs(x_727) * x_730);
  let x_732 : f32 = u_xlat29;
  let x_733 : f32 = u_xlat10;
  let x_735 : f32 = u_xlat27;
  u_xlat27 = ((x_732 * x_733) + x_735);
  let x_737 : f32 = u_xlat27;
  u_xlat27 = (x_737 + 0.00001f);
  let x_739 : f32 = u_xlat27;
  u_xlat27 = (0.5f / x_739);
  let x_741 : f32 = u_xlat18;
  let x_742 : f32 = u_xlat18;
  u_xlat18 = (x_741 * x_742);
  let x_745 : f32 = u_xlat2.x;
  let x_746 : f32 = u_xlat18;
  let x_749 : f32 = u_xlat2.x;
  u_xlat1.x = ((x_745 * x_746) + -(x_749));
  let x_754 : f32 = u_xlat1.x;
  let x_756 : f32 = u_xlat2.x;
  u_xlat1.x = ((x_754 * x_756) + 1.0f);
  let x_760 : f32 = u_xlat18;
  u_xlat18 = (x_760 * 0.318309873f);
  let x_764 : f32 = u_xlat1.x;
  let x_766 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_764 * x_766) + 0.0000001f);
  let x_771 : f32 = u_xlat18;
  let x_773 : f32 = u_xlat1.x;
  u_xlat18 = (x_771 / x_773);
  let x_775 : f32 = u_xlat18;
  let x_776 : f32 = u_xlat27;
  u_xlat9.y = (x_775 * x_776);
  let x_779 : f32 = u_xlat29;
  let x_781 : vec3<f32> = u_xlat9;
  let x_783 : vec2<f32> = (vec2<f32>(x_779, x_779) * vec2<f32>(x_781.x, x_781.y));
  let x_784 : vec3<f32> = u_xlat9;
  u_xlat9 = vec3<f32>(x_783.x, x_783.y, x_784.z);
  let x_787 : f32 = u_xlat9.y;
  u_xlat18 = (x_787 * 3.141592741f);
  let x_790 : f32 = u_xlat18;
  u_xlat18 = max(x_790, 0.0f);
  let x_792 : vec4<f32> = u_xlat4;
  let x_794 : vec4<f32> = u_xlat4;
  u_xlat27 = dot(vec3<f32>(x_792.x, x_792.y, x_792.z), vec3<f32>(x_794.x, x_794.y, x_794.z));
  let x_798 : f32 = u_xlat27;
  u_xlatb27 = !((x_798 == 0.0f));
  let x_800 : bool = u_xlatb27;
  u_xlat27 = select(0.0f, 1.0f, x_800);
  let x_802 : f32 = u_xlat27;
  let x_803 : f32 = u_xlat18;
  u_xlat18 = (x_802 * x_803);
  let x_805 : vec3<f32> = u_xlat9;
  let x_807 : vec3<f32> = u_xlat6;
  u_xlat1 = (vec3<f32>(x_805.x, x_805.x, x_805.x) * x_807);
  let x_809 : vec3<f32> = u_xlat6;
  let x_810 : f32 = u_xlat18;
  u_xlat9 = (x_809 * vec3<f32>(x_810, x_810, x_810));
  let x_814 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_814) + 1.0f);
  let x_819 : f32 = u_xlat0.x;
  let x_821 : f32 = u_xlat0.x;
  u_xlat28 = (x_819 * x_821);
  let x_823 : f32 = u_xlat28;
  let x_824 : f32 = u_xlat28;
  u_xlat28 = (x_823 * x_824);
  let x_827 : f32 = u_xlat0.x;
  let x_828 : f32 = u_xlat28;
  u_xlat0.x = (x_827 * x_828);
  let x_831 : vec4<f32> = u_xlat4;
  let x_835 : vec3<f32> = (-(vec3<f32>(x_831.x, x_831.y, x_831.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_836 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_835.x, x_835.y, x_835.z, x_836.w);
  let x_838 : vec4<f32> = u_xlat2;
  let x_840 : vec3<f32> = u_xlat0;
  let x_843 : vec4<f32> = u_xlat4;
  let x_845 : vec3<f32> = ((vec3<f32>(x_838.x, x_838.y, x_838.z) * vec3<f32>(x_840.x, x_840.x, x_840.x)) + vec3<f32>(x_843.x, x_843.y, x_843.z));
  let x_846 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_845.x, x_845.y, x_845.z, x_846.w);
  let x_848 : vec3<f32> = u_xlat9;
  let x_849 : vec4<f32> = u_xlat2;
  u_xlat0 = (x_848 * vec3<f32>(x_849.x, x_849.y, x_849.z));
  let x_854 : vec3<f32> = u_xlat5;
  let x_855 : vec3<f32> = u_xlat1;
  let x_857 : vec3<f32> = u_xlat0;
  let x_858 : vec3<f32> = ((x_854 * x_855) + x_857);
  let x_859 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_858.x, x_858.y, x_858.z, x_859.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(4) vs_TEXCOORD4_param : vec3<f32>, @location(0) vs_TEXCOORD0_param : vec4<f32>, @location(5) vs_COLOR0_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(3) vs_TEXCOORD3_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_COLOR0 = vs_COLOR0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

