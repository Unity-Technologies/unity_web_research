struct PGlobals {
  x_Time : vec4<f32>,
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding : u32,
  x_ZBufferParams : vec4<f32>,
  x_WorldSpaceLightPos0 : vec4<f32>,
  unity_OcclusionMaskSelector : vec4<f32>,
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
  x_Color1 : vec4<f32>,
  x_Color2 : vec4<f32>,
  x_Edge : f32,
  x_Fade : f32,
  x_Fog : f32,
}

var<private> vs_TEXCOORD4 : vec3<f32>;

@group(1) @binding(0) var<uniform> x_18 : PGlobals;

var<private> vs_TEXCOORD5 : vec4<f32>;

@group(0) @binding(0) var x_CameraDepthTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_CameraDepthTexture : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(0) @binding(1) var x_Normal : texture_2d<f32>;

@group(0) @binding(10) var sampler_Normal : sampler;

@group(0) @binding(2) var x_Noise : texture_2d<f32>;

@group(0) @binding(12) var sampler_Noise : sampler;

@group(0) @binding(3) var x_MainTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_MainTex : sampler;

@group(0) @binding(4) var x_Ramp : texture_2d<f32>;

@group(0) @binding(11) var sampler_Ramp : sampler;

var<private> SV_Target0 : vec4<f32>;

@group(0) @binding(6) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(7) var samplerunity_ProbeVolumeSH : sampler;

@group(0) @binding(5) var x_LightTexture0 : texture_2d<f32>;

@group(0) @binding(8) var sampler_LightTexture0 : sampler;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec3<f32>;
  var u_xlat18 : f32;
  var u_xlat1 : vec3<f32>;
  var u_xlat2 : vec3<f32>;
  var u_xlat19 : f32;
  var u_xlat3 : vec4<f32>;
  var u_xlat8 : vec3<f32>;
  var u_xlat4 : vec3<f32>;
  var u_xlat9 : vec3<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat20 : f32;
  var u_xlatb14 : bool;
  var x_434 : vec3<f32>;
  var u_xlat14 : f32;
  var u_xlat7 : f32;
  var u_xlat6 : vec3<f32>;
  var u_xlat12 : f32;
  var u_xlat13 : f32;
  var u_xlatb18 : bool;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_12 : vec3<f32> = vs_TEXCOORD4;
  let x_23 : vec3<f32> = x_18.x_WorldSpaceCameraPos;
  u_xlat0 = (-(x_12) + x_23);
  let x_27 : vec3<f32> = u_xlat0;
  let x_28 : vec3<f32> = u_xlat0;
  u_xlat18 = dot(x_27, x_28);
  let x_30 : f32 = u_xlat18;
  u_xlat18 = inverseSqrt(x_30);
  let x_33 : f32 = u_xlat18;
  let x_35 : vec3<f32> = u_xlat0;
  u_xlat1 = (vec3<f32>(x_33, x_33, x_33) * x_35);
  let x_41 : vec4<f32> = vs_TEXCOORD5;
  let x_43 : vec4<f32> = vs_TEXCOORD5;
  let x_45 : vec2<f32> = (vec2<f32>(x_41.x, x_41.y) / vec2<f32>(x_43.w, x_43.w));
  let x_46 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_45.x, x_45.y, x_46.z);
  let x_59 : vec3<f32> = u_xlat2;
  let x_61 : vec4<f32> = textureSample(x_CameraDepthTexture, sampler_CameraDepthTexture, vec2<f32>(x_59.x, x_59.y));
  u_xlat19 = x_61.x;
  let x_69 : f32 = x_18.x_ZBufferParams.z;
  let x_70 : f32 = u_xlat19;
  let x_74 : f32 = x_18.x_ZBufferParams.w;
  u_xlat19 = ((x_69 * x_70) + x_74);
  let x_77 : f32 = u_xlat19;
  u_xlat19 = (1.0f / x_77);
  let x_79 : f32 = u_xlat19;
  let x_82 : f32 = vs_TEXCOORD5.z;
  u_xlat19 = (x_79 + -(x_82));
  let x_85 : f32 = u_xlat19;
  let x_90 : f32 = x_18.x_Edge;
  let x_93 : f32 = x_18.x_Fog;
  let x_96 : f32 = x_18.x_Fade;
  u_xlat2 = (abs(vec3<f32>(x_85, x_85, x_85)) + -(vec3<f32>(x_90, x_93, x_96)));
  let x_100 : vec3<f32> = u_xlat2;
  let x_102 : f32 = x_18.x_Edge;
  let x_104 : f32 = x_18.x_Fog;
  let x_106 : f32 = x_18.x_Fade;
  u_xlat2 = (x_100 / -(vec3<f32>(x_102, x_104, x_106)));
  let x_110 : vec3<f32> = u_xlat2;
  u_xlat2 = clamp(x_110, vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_117 : f32 = u_xlat2.y;
  u_xlat19 = (-(x_117) + 1.0f);
  let x_125 : vec4<f32> = x_18.x_Time;
  let x_132 : vec4<f32> = vs_TEXCOORD0;
  let x_134 : vec3<f32> = ((vec3<f32>(x_125.x, x_125.x, x_125.x) * vec3<f32>(0.200000003f, 0.100000001f, 0.200000003f)) + vec3<f32>(x_132.z, x_132.w, x_132.y));
  let x_135 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_134.x, x_134.y, x_134.z, x_135.w);
  let x_138 : vec4<f32> = u_xlat3;
  let x_142 : vec2<f32> = (vec2<f32>(x_138.x, x_138.y) * vec2<f32>(0.5f, 0.5f));
  let x_143 : vec3<f32> = u_xlat8;
  u_xlat8 = vec3<f32>(x_142.x, x_143.y, x_142.y);
  let x_151 : vec3<f32> = u_xlat8;
  let x_153 : vec4<f32> = textureSample(x_Normal, sampler_Normal, vec2<f32>(x_151.x, x_151.z));
  u_xlat4 = vec3<f32>(x_153.x, x_153.y, x_153.w);
  let x_156 : f32 = u_xlat4.z;
  let x_158 : f32 = u_xlat4.x;
  u_xlat4.x = (x_156 * x_158);
  let x_161 : vec3<f32> = u_xlat4;
  let x_168 : vec2<f32> = ((vec2<f32>(x_161.x, x_161.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_169 : vec3<f32> = u_xlat4;
  u_xlat4 = vec3<f32>(x_168.x, x_168.y, x_169.z);
  let x_171 : vec3<f32> = u_xlat4;
  let x_173 : vec3<f32> = u_xlat4;
  u_xlat8.x = dot(vec2<f32>(x_171.x, x_171.y), vec2<f32>(x_173.x, x_173.y));
  let x_178 : f32 = u_xlat8.x;
  u_xlat8.x = min(x_178, 1.0f);
  let x_182 : f32 = u_xlat8.x;
  u_xlat8.x = (-(x_182) + 1.0f);
  let x_187 : f32 = u_xlat8.x;
  u_xlat4.z = sqrt(x_187);
  let x_190 : vec4<f32> = vs_TEXCOORD0;
  let x_191 : vec2<f32> = vec2<f32>(x_190.x, x_190.x);
  let x_192 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_191.x, x_192.y, x_192.z, x_191.y);
  let x_194 : vec3<f32> = u_xlat4;
  let x_198 : vec4<f32> = u_xlat3;
  let x_200 : vec2<f32> = ((vec2<f32>(x_194.x, x_194.y) * vec2<f32>(0.200000003f, 0.200000003f)) + vec2<f32>(x_198.w, x_198.z));
  let x_201 : vec3<f32> = u_xlat8;
  u_xlat8 = vec3<f32>(x_200.x, x_201.y, x_200.y);
  let x_204 : f32 = vs_TEXCOORD0.y;
  let x_206 : f32 = x_18.x_Time.x;
  u_xlat3.y = (x_204 + x_206);
  let x_209 : vec3<f32> = u_xlat4;
  let x_211 : vec4<f32> = u_xlat3;
  let x_213 : vec2<f32> = (vec2<f32>(x_209.x, x_209.y) + vec2<f32>(x_211.x, x_211.y));
  let x_214 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_213.x, x_213.y, x_214.z, x_214.w);
  let x_216 : vec4<f32> = u_xlat3;
  let x_218 : vec2<f32> = (vec2<f32>(x_216.x, x_216.y) * vec2<f32>(0.200000003f, 0.200000003f));
  let x_219 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_218.x, x_218.y, x_219.z, x_219.w);
  let x_226 : vec4<f32> = u_xlat3;
  let x_228 : vec4<f32> = textureSample(x_Noise, sampler_Noise, vec2<f32>(x_226.x, x_226.y));
  u_xlat3.x = x_228.x;
  let x_236 : vec3<f32> = u_xlat8;
  let x_238 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_236.x, x_236.z));
  u_xlat8.x = x_238.x;
  u_xlat8.z = 0.0f;
  let x_248 : vec3<f32> = u_xlat8;
  let x_250 : vec4<f32> = textureSample(x_Ramp, sampler_Ramp, vec2<f32>(x_248.x, x_248.z));
  u_xlat9 = vec3<f32>(x_250.x, x_250.y, x_250.z);
  let x_253 : vec3<f32> = u_xlat9;
  let x_257 : vec4<f32> = x_18.x_Color2;
  let x_259 : vec3<f32> = (-(x_253) + vec3<f32>(x_257.x, x_257.y, x_257.z));
  let x_260 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_259.x, x_259.y, x_259.z, x_260.w);
  let x_262 : vec3<f32> = u_xlat2;
  let x_264 : vec4<f32> = u_xlat5;
  let x_267 : vec3<f32> = u_xlat9;
  u_xlat9 = ((vec3<f32>(x_262.x, x_262.x, x_262.x) * vec3<f32>(x_264.x, x_264.y, x_264.z)) + x_267);
  let x_269 : f32 = u_xlat19;
  let x_271 : f32 = u_xlat3.x;
  u_xlat2.x = (x_269 + -(x_271));
  let x_276 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_276, 0.0f, 1.0f);
  let x_281 : f32 = u_xlat2.x;
  u_xlat20 = ((x_281 * -2.0f) + 3.0f);
  let x_287 : f32 = u_xlat2.x;
  let x_289 : f32 = u_xlat2.x;
  u_xlat2.x = (x_287 * x_289);
  let x_293 : f32 = u_xlat2.x;
  let x_294 : f32 = u_xlat20;
  u_xlat2.x = (x_293 * x_294);
  let x_297 : f32 = u_xlat19;
  let x_299 : f32 = u_xlat2.x;
  u_xlat19 = (x_297 * x_299);
  let x_303 : vec4<f32> = x_18.x_Color1;
  let x_306 : vec4<f32> = x_18.x_Color2;
  let x_309 : vec3<f32> = (vec3<f32>(x_303.x, x_303.y, x_303.z) + -(vec3<f32>(x_306.x, x_306.y, x_306.z)));
  let x_310 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_309.x, x_309.y, x_309.z, x_310.w);
  let x_312 : f32 = u_xlat19;
  let x_314 : vec4<f32> = u_xlat5;
  let x_318 : vec4<f32> = x_18.x_Color2;
  let x_320 : vec3<f32> = ((vec3<f32>(x_312, x_312, x_312) * vec3<f32>(x_314.x, x_314.y, x_314.z)) + vec3<f32>(x_318.x, x_318.y, x_318.z));
  let x_321 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_320.x, x_320.y, x_320.z, x_321.w);
  let x_323 : vec3<f32> = u_xlat9;
  let x_324 : vec4<f32> = u_xlat5;
  let x_326 : vec3<f32> = (x_323 + vec3<f32>(x_324.x, x_324.y, x_324.z));
  let x_327 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_326.x, x_326.y, x_326.z, x_327.w);
  let x_330 : f32 = u_xlat8.x;
  u_xlat19 = (-(x_330) + 1.0f);
  let x_336 : f32 = u_xlat2.z;
  SV_Target0.w = (-(x_336) + 1.0f);
  let x_341 : vec3<f32> = vs_TEXCOORD4;
  let x_345 : vec4<f32> = x_18.unity_WorldToLight[1i];
  let x_347 : vec2<f32> = (vec2<f32>(x_341.y, x_341.y) * vec2<f32>(x_345.x, x_345.y));
  let x_348 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_347.x, x_347.y, x_348.z);
  let x_351 : vec4<f32> = x_18.unity_WorldToLight[0i];
  let x_353 : vec3<f32> = vs_TEXCOORD4;
  let x_356 : vec3<f32> = u_xlat2;
  let x_358 : vec2<f32> = ((vec2<f32>(x_351.x, x_351.y) * vec2<f32>(x_353.x, x_353.x)) + vec2<f32>(x_356.x, x_356.y));
  let x_359 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_358.x, x_358.y, x_359.z);
  let x_362 : vec4<f32> = x_18.unity_WorldToLight[2i];
  let x_364 : vec3<f32> = vs_TEXCOORD4;
  let x_367 : vec3<f32> = u_xlat2;
  let x_369 : vec2<f32> = ((vec2<f32>(x_362.x, x_362.y) * vec2<f32>(x_364.z, x_364.z)) + vec2<f32>(x_367.x, x_367.y));
  let x_370 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_369.x, x_369.y, x_370.z);
  let x_372 : vec3<f32> = u_xlat2;
  let x_376 : vec4<f32> = x_18.unity_WorldToLight[3i];
  let x_378 : vec2<f32> = (vec2<f32>(x_372.x, x_372.y) + vec2<f32>(x_376.x, x_376.y));
  let x_379 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_378.x, x_378.y, x_379.z);
  let x_386 : f32 = x_18.unity_ProbeVolumeParams.x;
  u_xlatb14 = (x_386 == 1.0f);
  let x_388 : bool = u_xlatb14;
  if (x_388) {
    let x_392 : f32 = x_18.unity_ProbeVolumeParams.y;
    u_xlatb14 = (x_392 == 1.0f);
    let x_394 : vec3<f32> = vs_TEXCOORD4;
    let x_398 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[1i];
    let x_400 : vec3<f32> = (vec3<f32>(x_394.y, x_394.y, x_394.y) * vec3<f32>(x_398.x, x_398.y, x_398.z));
    let x_401 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_400.x, x_400.y, x_400.z, x_401.w);
    let x_404 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[0i];
    let x_406 : vec3<f32> = vs_TEXCOORD4;
    let x_409 : vec4<f32> = u_xlat5;
    let x_411 : vec3<f32> = ((vec3<f32>(x_404.x, x_404.y, x_404.z) * vec3<f32>(x_406.x, x_406.x, x_406.x)) + vec3<f32>(x_409.x, x_409.y, x_409.z));
    let x_412 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_411.x, x_411.y, x_411.z, x_412.w);
    let x_415 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[2i];
    let x_417 : vec3<f32> = vs_TEXCOORD4;
    let x_420 : vec4<f32> = u_xlat5;
    let x_422 : vec3<f32> = ((vec3<f32>(x_415.x, x_415.y, x_415.z) * vec3<f32>(x_417.z, x_417.z, x_417.z)) + vec3<f32>(x_420.x, x_420.y, x_420.z));
    let x_423 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_422.x, x_422.y, x_422.z, x_423.w);
    let x_425 : vec4<f32> = u_xlat5;
    let x_428 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[3i];
    let x_430 : vec3<f32> = (vec3<f32>(x_425.x, x_425.y, x_425.z) + vec3<f32>(x_428.x, x_428.y, x_428.z));
    let x_431 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_430.x, x_430.y, x_430.z, x_431.w);
    let x_433 : bool = u_xlatb14;
    if (x_433) {
      let x_437 : vec4<f32> = u_xlat5;
      x_434 = vec3<f32>(x_437.x, x_437.y, x_437.z);
    } else {
      let x_440 : vec3<f32> = vs_TEXCOORD4;
      x_434 = x_440;
    }
    let x_441 : vec3<f32> = x_434;
    let x_442 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_441.x, x_441.y, x_441.z, x_442.w);
    let x_444 : vec4<f32> = u_xlat5;
    let x_448 : vec3<f32> = x_18.unity_ProbeVolumeMin;
    let x_450 : vec3<f32> = (vec3<f32>(x_444.x, x_444.y, x_444.z) + -(x_448));
    let x_451 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_450.x, x_450.y, x_450.z, x_451.w);
    let x_453 : vec4<f32> = u_xlat5;
    let x_457 : vec3<f32> = x_18.unity_ProbeVolumeSizeInv;
    let x_458 : vec3<f32> = (vec3<f32>(x_453.x, x_453.y, x_453.z) * x_457);
    let x_459 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_459.x, x_458.x, x_458.y, x_458.z);
    let x_463 : f32 = u_xlat5.y;
    u_xlat14 = ((x_463 * 0.25f) + 0.75f);
    let x_469 : f32 = x_18.unity_ProbeVolumeParams.z;
    u_xlat20 = ((x_469 * 0.5f) + 0.75f);
    let x_472 : f32 = u_xlat20;
    let x_473 : f32 = u_xlat14;
    u_xlat5.x = max(x_472, x_473);
    let x_484 : vec4<f32> = u_xlat5;
    let x_486 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_484.x, x_484.z, x_484.w));
    u_xlat5 = x_486;
  } else {
    u_xlat5.x = 1.0f;
    u_xlat5.y = 1.0f;
    u_xlat5.z = 1.0f;
    u_xlat5.w = 1.0f;
  }
  let x_492 : vec4<f32> = u_xlat5;
  let x_495 : vec4<f32> = x_18.unity_OcclusionMaskSelector;
  u_xlat14 = dot(x_492, x_495);
  let x_497 : f32 = u_xlat14;
  u_xlat14 = clamp(x_497, 0.0f, 1.0f);
  let x_504 : vec3<f32> = u_xlat2;
  let x_506 : vec4<f32> = textureSample(x_LightTexture0, sampler_LightTexture0, vec2<f32>(x_504.x, x_504.y));
  u_xlat2.x = x_506.w;
  let x_509 : f32 = u_xlat14;
  let x_511 : f32 = u_xlat2.x;
  u_xlat2.x = (x_509 * x_511);
  let x_515 : vec3<f32> = vs_TEXCOORD1;
  let x_516 : vec3<f32> = u_xlat4;
  u_xlat5.x = dot(x_515, x_516);
  let x_520 : vec3<f32> = vs_TEXCOORD2;
  let x_521 : vec3<f32> = u_xlat4;
  u_xlat5.y = dot(x_520, x_521);
  let x_525 : vec3<f32> = vs_TEXCOORD3;
  let x_526 : vec3<f32> = u_xlat4;
  u_xlat5.z = dot(x_525, x_526);
  let x_529 : vec4<f32> = u_xlat5;
  let x_531 : vec4<f32> = u_xlat5;
  u_xlat8.x = dot(vec3<f32>(x_529.x, x_529.y, x_529.z), vec3<f32>(x_531.x, x_531.y, x_531.z));
  let x_536 : f32 = u_xlat8.x;
  u_xlat8.x = inverseSqrt(x_536);
  let x_539 : vec3<f32> = u_xlat8;
  let x_541 : vec4<f32> = u_xlat5;
  u_xlat8 = (vec3<f32>(x_539.x, x_539.x, x_539.x) * vec3<f32>(x_541.x, x_541.y, x_541.z));
  let x_544 : vec3<f32> = u_xlat2;
  let x_548 : vec4<f32> = x_18.x_LightColor0;
  u_xlat4 = (vec3<f32>(x_544.x, x_544.x, x_544.x) * vec3<f32>(x_548.x, x_548.y, x_548.z));
  let x_551 : vec4<f32> = u_xlat3;
  let x_555 : vec3<f32> = (vec3<f32>(x_551.x, x_551.y, x_551.z) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_556 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_555.x, x_555.y, x_555.z, x_556.w);
  let x_560 : f32 = x_18.x_Metallic;
  let x_562 : f32 = x_18.x_Metallic;
  let x_564 : f32 = x_18.x_Metallic;
  let x_565 : vec3<f32> = vec3<f32>(x_560, x_562, x_564);
  let x_570 : vec4<f32> = u_xlat5;
  let x_575 : vec3<f32> = ((vec3<f32>(x_565.x, x_565.y, x_565.z) * vec3<f32>(x_570.x, x_570.y, x_570.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_576 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_575.x, x_575.y, x_575.z, x_576.w);
  let x_579 : f32 = x_18.x_Metallic;
  u_xlat2.x = ((-(x_579) * 0.959999979f) + 0.959999979f);
  let x_585 : vec3<f32> = u_xlat2;
  let x_587 : vec4<f32> = u_xlat3;
  let x_589 : vec3<f32> = (vec3<f32>(x_585.x, x_585.x, x_585.x) * vec3<f32>(x_587.x, x_587.y, x_587.z));
  let x_590 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_589.x, x_589.y, x_589.z, x_590.w);
  let x_592 : f32 = u_xlat19;
  let x_596 : f32 = x_18.x_Glossiness;
  u_xlat19 = ((-(x_592) * x_596) + 1.0f);
  let x_599 : vec3<f32> = u_xlat0;
  let x_600 : f32 = u_xlat18;
  let x_604 : vec4<f32> = x_18.x_WorldSpaceLightPos0;
  u_xlat0 = ((x_599 * vec3<f32>(x_600, x_600, x_600)) + vec3<f32>(x_604.x, x_604.y, x_604.z));
  let x_607 : vec3<f32> = u_xlat0;
  let x_608 : vec3<f32> = u_xlat0;
  u_xlat18 = dot(x_607, x_608);
  let x_610 : f32 = u_xlat18;
  u_xlat18 = max(x_610, 0.001f);
  let x_613 : f32 = u_xlat18;
  u_xlat18 = inverseSqrt(x_613);
  let x_615 : f32 = u_xlat18;
  let x_617 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_615, x_615, x_615) * x_617);
  let x_619 : vec3<f32> = u_xlat8;
  let x_620 : vec3<f32> = u_xlat1;
  u_xlat18 = dot(x_619, x_620);
  let x_622 : vec3<f32> = u_xlat8;
  let x_624 : vec4<f32> = x_18.x_WorldSpaceLightPos0;
  u_xlat1.x = dot(x_622, vec3<f32>(x_624.x, x_624.y, x_624.z));
  let x_629 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_629, 0.0f, 1.0f);
  let x_633 : vec3<f32> = u_xlat8;
  let x_634 : vec3<f32> = u_xlat0;
  u_xlat7 = dot(x_633, x_634);
  let x_636 : f32 = u_xlat7;
  u_xlat7 = clamp(x_636, 0.0f, 1.0f);
  let x_639 : vec4<f32> = x_18.x_WorldSpaceLightPos0;
  let x_641 : vec3<f32> = u_xlat0;
  u_xlat0.x = dot(vec3<f32>(x_639.x, x_639.y, x_639.z), x_641);
  let x_645 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_645, 0.0f, 1.0f);
  let x_650 : f32 = u_xlat0.x;
  let x_652 : f32 = u_xlat0.x;
  u_xlat6.x = (x_650 * x_652);
  let x_655 : vec3<f32> = u_xlat6;
  let x_657 : f32 = u_xlat19;
  u_xlat6.x = dot(vec2<f32>(x_655.x, x_655.x), vec2<f32>(x_657, x_657));
  let x_662 : f32 = u_xlat6.x;
  u_xlat6.x = (x_662 + -0.5f);
  let x_668 : f32 = u_xlat1.x;
  u_xlat12 = (-(x_668) + 1.0f);
  let x_672 : f32 = u_xlat12;
  let x_673 : f32 = u_xlat12;
  u_xlat13 = (x_672 * x_673);
  let x_675 : f32 = u_xlat13;
  let x_676 : f32 = u_xlat13;
  u_xlat13 = (x_675 * x_676);
  let x_678 : f32 = u_xlat12;
  let x_679 : f32 = u_xlat13;
  u_xlat12 = (x_678 * x_679);
  let x_682 : f32 = u_xlat6.x;
  let x_683 : f32 = u_xlat12;
  u_xlat12 = ((x_682 * x_683) + 1.0f);
  let x_686 : f32 = u_xlat18;
  u_xlat13 = (-(abs(x_686)) + 1.0f);
  let x_690 : f32 = u_xlat13;
  let x_691 : f32 = u_xlat13;
  u_xlat2.x = (x_690 * x_691);
  let x_695 : f32 = u_xlat2.x;
  let x_697 : f32 = u_xlat2.x;
  u_xlat2.x = (x_695 * x_697);
  let x_700 : f32 = u_xlat13;
  let x_702 : f32 = u_xlat2.x;
  u_xlat13 = (x_700 * x_702);
  let x_705 : f32 = u_xlat6.x;
  let x_706 : f32 = u_xlat13;
  u_xlat6.x = ((x_705 * x_706) + 1.0f);
  let x_711 : f32 = u_xlat6.x;
  let x_712 : f32 = u_xlat12;
  u_xlat6.x = (x_711 * x_712);
  let x_715 : f32 = u_xlat19;
  let x_716 : f32 = u_xlat19;
  u_xlat12 = (x_715 * x_716);
  let x_718 : f32 = u_xlat12;
  u_xlat12 = max(x_718, 0.002f);
  let x_721 : f32 = u_xlat12;
  u_xlat13 = (-(x_721) + 1.0f);
  let x_724 : f32 = u_xlat18;
  let x_726 : f32 = u_xlat13;
  let x_728 : f32 = u_xlat12;
  u_xlat19 = ((abs(x_724) * x_726) + x_728);
  let x_731 : f32 = u_xlat1.x;
  let x_732 : f32 = u_xlat13;
  let x_734 : f32 = u_xlat12;
  u_xlat13 = ((x_731 * x_732) + x_734);
  let x_736 : f32 = u_xlat18;
  let x_738 : f32 = u_xlat13;
  u_xlat18 = (abs(x_736) * x_738);
  let x_741 : f32 = u_xlat1.x;
  let x_742 : f32 = u_xlat19;
  let x_744 : f32 = u_xlat18;
  u_xlat18 = ((x_741 * x_742) + x_744);
  let x_746 : f32 = u_xlat18;
  u_xlat18 = (x_746 + 0.00001f);
  let x_749 : f32 = u_xlat18;
  u_xlat18 = (0.5f / x_749);
  let x_751 : f32 = u_xlat12;
  let x_752 : f32 = u_xlat12;
  u_xlat12 = (x_751 * x_752);
  let x_754 : f32 = u_xlat7;
  let x_755 : f32 = u_xlat12;
  let x_757 : f32 = u_xlat7;
  u_xlat13 = ((x_754 * x_755) + -(x_757));
  let x_760 : f32 = u_xlat13;
  let x_761 : f32 = u_xlat7;
  u_xlat7 = ((x_760 * x_761) + 1.0f);
  let x_764 : f32 = u_xlat12;
  u_xlat12 = (x_764 * 0.318309873f);
  let x_767 : f32 = u_xlat7;
  let x_768 : f32 = u_xlat7;
  u_xlat7 = ((x_767 * x_768) + 0.0000001f);
  let x_772 : f32 = u_xlat12;
  let x_773 : f32 = u_xlat7;
  u_xlat12 = (x_772 / x_773);
  let x_775 : f32 = u_xlat12;
  let x_776 : f32 = u_xlat18;
  u_xlat6.y = (x_775 * x_776);
  let x_779 : vec3<f32> = u_xlat1;
  let x_781 : vec3<f32> = u_xlat6;
  let x_783 : vec2<f32> = (vec2<f32>(x_779.x, x_779.x) * vec2<f32>(x_781.x, x_781.y));
  let x_784 : vec3<f32> = u_xlat6;
  u_xlat6 = vec3<f32>(x_783.x, x_783.y, x_784.z);
  let x_787 : f32 = u_xlat6.y;
  u_xlat12 = (x_787 * 3.141592741f);
  let x_790 : f32 = u_xlat12;
  u_xlat12 = max(x_790, 0.0f);
  let x_792 : vec4<f32> = u_xlat5;
  let x_794 : vec4<f32> = u_xlat5;
  u_xlat18 = dot(vec3<f32>(x_792.x, x_792.y, x_792.z), vec3<f32>(x_794.x, x_794.y, x_794.z));
  let x_798 : f32 = u_xlat18;
  u_xlatb18 = !((x_798 == 0.0f));
  let x_800 : bool = u_xlatb18;
  u_xlat18 = select(0.0f, 1.0f, x_800);
  let x_802 : f32 = u_xlat18;
  let x_803 : f32 = u_xlat12;
  u_xlat12 = (x_802 * x_803);
  let x_805 : vec3<f32> = u_xlat6;
  let x_807 : vec3<f32> = u_xlat4;
  u_xlat1 = (vec3<f32>(x_805.x, x_805.x, x_805.x) * x_807);
  let x_809 : vec3<f32> = u_xlat4;
  let x_810 : f32 = u_xlat12;
  u_xlat6 = (x_809 * vec3<f32>(x_810, x_810, x_810));
  let x_814 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_814) + 1.0f);
  let x_819 : f32 = u_xlat0.x;
  let x_821 : f32 = u_xlat0.x;
  u_xlat19 = (x_819 * x_821);
  let x_823 : f32 = u_xlat19;
  let x_824 : f32 = u_xlat19;
  u_xlat19 = (x_823 * x_824);
  let x_827 : f32 = u_xlat0.x;
  let x_828 : f32 = u_xlat19;
  u_xlat0.x = (x_827 * x_828);
  let x_831 : vec4<f32> = u_xlat5;
  u_xlat2 = (-(vec3<f32>(x_831.x, x_831.y, x_831.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_836 : vec3<f32> = u_xlat2;
  let x_837 : vec3<f32> = u_xlat0;
  let x_840 : vec4<f32> = u_xlat5;
  u_xlat2 = ((x_836 * vec3<f32>(x_837.x, x_837.x, x_837.x)) + vec3<f32>(x_840.x, x_840.y, x_840.z));
  let x_843 : vec3<f32> = u_xlat6;
  let x_844 : vec3<f32> = u_xlat2;
  u_xlat0 = (x_843 * x_844);
  let x_846 : vec4<f32> = u_xlat3;
  let x_848 : vec3<f32> = u_xlat1;
  let x_850 : vec3<f32> = u_xlat0;
  let x_851 : vec3<f32> = ((vec3<f32>(x_846.x, x_846.y, x_846.z) * x_848) + x_850);
  let x_852 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_851.x, x_851.y, x_851.z, x_852.w);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(4) vs_TEXCOORD4_param : vec3<f32>, @location(5) vs_TEXCOORD5_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(3) vs_TEXCOORD3_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD5 = vs_TEXCOORD5_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

