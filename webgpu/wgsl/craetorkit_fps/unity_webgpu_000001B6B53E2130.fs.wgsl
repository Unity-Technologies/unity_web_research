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
  var u_xlat21 : f32;
  var u_xlat1 : vec3<f32>;
  var u_xlat2 : vec3<f32>;
  var u_xlat22 : f32;
  var u_xlat3 : vec3<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat10 : vec3<f32>;
  var u_xlat5 : vec3<f32>;
  var u_xlat23 : f32;
  var u_xlat6 : vec4<f32>;
  var u_xlatb23 : bool;
  var x_429 : vec3<f32>;
  var u_xlat24 : f32;
  var u_xlat9 : f32;
  var u_xlat7 : vec3<f32>;
  var u_xlat14 : f32;
  var u_xlat8 : f32;
  var u_xlatb21 : bool;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_12 : vec3<f32> = vs_TEXCOORD4;
  let x_23 : vec4<f32> = x_18.x_WorldSpaceLightPos0;
  u_xlat0 = (-(x_12) + vec3<f32>(x_23.x, x_23.y, x_23.z));
  let x_28 : vec3<f32> = u_xlat0;
  let x_29 : vec3<f32> = u_xlat0;
  u_xlat21 = dot(x_28, x_29);
  let x_31 : f32 = u_xlat21;
  u_xlat21 = inverseSqrt(x_31);
  let x_34 : f32 = u_xlat21;
  let x_36 : vec3<f32> = u_xlat0;
  u_xlat1 = (vec3<f32>(x_34, x_34, x_34) * x_36);
  let x_39 : vec3<f32> = vs_TEXCOORD4;
  let x_44 : vec3<f32> = x_18.x_WorldSpaceCameraPos;
  u_xlat2 = (-(x_39) + x_44);
  let x_47 : vec3<f32> = u_xlat2;
  let x_48 : vec3<f32> = u_xlat2;
  u_xlat22 = dot(x_47, x_48);
  let x_50 : f32 = u_xlat22;
  u_xlat22 = inverseSqrt(x_50);
  let x_52 : f32 = u_xlat22;
  let x_54 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_52, x_52, x_52) * x_54);
  let x_60 : vec4<f32> = vs_TEXCOORD5;
  let x_62 : vec4<f32> = vs_TEXCOORD5;
  let x_64 : vec2<f32> = (vec2<f32>(x_60.x, x_60.y) / vec2<f32>(x_62.w, x_62.w));
  let x_65 : vec3<f32> = u_xlat3;
  u_xlat3 = vec3<f32>(x_64.x, x_64.y, x_65.z);
  let x_77 : vec3<f32> = u_xlat3;
  let x_79 : vec4<f32> = textureSample(x_CameraDepthTexture, sampler_CameraDepthTexture, vec2<f32>(x_77.x, x_77.y));
  u_xlat22 = x_79.x;
  let x_87 : f32 = x_18.x_ZBufferParams.z;
  let x_88 : f32 = u_xlat22;
  let x_92 : f32 = x_18.x_ZBufferParams.w;
  u_xlat22 = ((x_87 * x_88) + x_92);
  let x_95 : f32 = u_xlat22;
  u_xlat22 = (1.0f / x_95);
  let x_97 : f32 = u_xlat22;
  let x_100 : f32 = vs_TEXCOORD5.z;
  u_xlat22 = (x_97 + -(x_100));
  let x_103 : f32 = u_xlat22;
  let x_108 : f32 = x_18.x_Edge;
  let x_111 : f32 = x_18.x_Fog;
  let x_114 : f32 = x_18.x_Fade;
  u_xlat3 = (abs(vec3<f32>(x_103, x_103, x_103)) + -(vec3<f32>(x_108, x_111, x_114)));
  let x_118 : vec3<f32> = u_xlat3;
  let x_120 : f32 = x_18.x_Edge;
  let x_122 : f32 = x_18.x_Fog;
  let x_124 : f32 = x_18.x_Fade;
  u_xlat3 = (x_118 / -(vec3<f32>(x_120, x_122, x_124)));
  let x_128 : vec3<f32> = u_xlat3;
  u_xlat3 = clamp(x_128, vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_135 : f32 = u_xlat3.y;
  u_xlat22 = (-(x_135) + 1.0f);
  let x_142 : vec4<f32> = x_18.x_Time;
  let x_149 : vec4<f32> = vs_TEXCOORD0;
  let x_151 : vec3<f32> = ((vec3<f32>(x_142.x, x_142.x, x_142.x) * vec3<f32>(0.200000003f, 0.100000001f, 0.200000003f)) + vec3<f32>(x_149.z, x_149.w, x_149.y));
  let x_152 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_151.x, x_151.y, x_151.z, x_152.w);
  let x_155 : vec4<f32> = u_xlat4;
  let x_159 : vec2<f32> = (vec2<f32>(x_155.x, x_155.y) * vec2<f32>(0.5f, 0.5f));
  let x_160 : vec3<f32> = u_xlat10;
  u_xlat10 = vec3<f32>(x_159.x, x_160.y, x_159.y);
  let x_168 : vec3<f32> = u_xlat10;
  let x_170 : vec4<f32> = textureSample(x_Normal, sampler_Normal, vec2<f32>(x_168.x, x_168.z));
  u_xlat5 = vec3<f32>(x_170.x, x_170.y, x_170.w);
  let x_173 : f32 = u_xlat5.z;
  let x_175 : f32 = u_xlat5.x;
  u_xlat5.x = (x_173 * x_175);
  let x_178 : vec3<f32> = u_xlat5;
  let x_185 : vec2<f32> = ((vec2<f32>(x_178.x, x_178.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_186 : vec3<f32> = u_xlat5;
  u_xlat5 = vec3<f32>(x_185.x, x_185.y, x_186.z);
  let x_189 : vec3<f32> = u_xlat5;
  let x_191 : vec3<f32> = u_xlat5;
  u_xlat23 = dot(vec2<f32>(x_189.x, x_189.y), vec2<f32>(x_191.x, x_191.y));
  let x_194 : f32 = u_xlat23;
  u_xlat23 = min(x_194, 1.0f);
  let x_196 : f32 = u_xlat23;
  u_xlat23 = (-(x_196) + 1.0f);
  let x_199 : f32 = u_xlat23;
  u_xlat5.z = sqrt(x_199);
  let x_202 : vec4<f32> = vs_TEXCOORD0;
  let x_203 : vec2<f32> = vec2<f32>(x_202.x, x_202.x);
  let x_204 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_203.x, x_204.y, x_204.z, x_203.y);
  let x_206 : vec3<f32> = u_xlat5;
  let x_210 : vec4<f32> = u_xlat4;
  let x_212 : vec2<f32> = ((vec2<f32>(x_206.x, x_206.y) * vec2<f32>(0.200000003f, 0.200000003f)) + vec2<f32>(x_210.w, x_210.z));
  let x_213 : vec3<f32> = u_xlat10;
  u_xlat10 = vec3<f32>(x_212.x, x_213.y, x_212.y);
  let x_216 : f32 = vs_TEXCOORD0.y;
  let x_218 : f32 = x_18.x_Time.x;
  u_xlat4.y = (x_216 + x_218);
  let x_221 : vec3<f32> = u_xlat5;
  let x_223 : vec4<f32> = u_xlat4;
  let x_225 : vec2<f32> = (vec2<f32>(x_221.x, x_221.y) + vec2<f32>(x_223.x, x_223.y));
  let x_226 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_225.x, x_225.y, x_226.z, x_226.w);
  let x_228 : vec4<f32> = u_xlat4;
  let x_230 : vec2<f32> = (vec2<f32>(x_228.x, x_228.y) * vec2<f32>(0.200000003f, 0.200000003f));
  let x_231 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_230.x, x_230.y, x_231.z, x_231.w);
  let x_238 : vec4<f32> = u_xlat4;
  let x_240 : vec4<f32> = textureSample(x_Noise, sampler_Noise, vec2<f32>(x_238.x, x_238.y));
  u_xlat23 = x_240.x;
  let x_247 : vec3<f32> = u_xlat10;
  let x_249 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_247.x, x_247.z));
  u_xlat10.x = x_249.x;
  u_xlat10.z = 0.0f;
  let x_258 : vec3<f32> = u_xlat10;
  let x_260 : vec4<f32> = textureSample(x_Ramp, sampler_Ramp, vec2<f32>(x_258.x, x_258.z));
  let x_261 : vec3<f32> = vec3<f32>(x_260.x, x_260.y, x_260.z);
  let x_262 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_261.x, x_261.y, x_261.z, x_262.w);
  let x_265 : vec4<f32> = u_xlat4;
  let x_270 : vec4<f32> = x_18.x_Color2;
  let x_272 : vec3<f32> = (-(vec3<f32>(x_265.x, x_265.y, x_265.z)) + vec3<f32>(x_270.x, x_270.y, x_270.z));
  let x_273 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_272.x, x_272.y, x_272.z, x_273.w);
  let x_275 : vec3<f32> = u_xlat3;
  let x_277 : vec4<f32> = u_xlat6;
  let x_280 : vec4<f32> = u_xlat4;
  let x_282 : vec3<f32> = ((vec3<f32>(x_275.x, x_275.x, x_275.x) * vec3<f32>(x_277.x, x_277.y, x_277.z)) + vec3<f32>(x_280.x, x_280.y, x_280.z));
  let x_283 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_282.x, x_282.y, x_282.z, x_283.w);
  let x_285 : f32 = u_xlat22;
  let x_286 : f32 = u_xlat23;
  u_xlat23 = (x_285 + -(x_286));
  let x_289 : f32 = u_xlat23;
  u_xlat23 = clamp(x_289, 0.0f, 1.0f);
  let x_291 : f32 = u_xlat23;
  u_xlat3.x = ((x_291 * -2.0f) + 3.0f);
  let x_297 : f32 = u_xlat23;
  let x_298 : f32 = u_xlat23;
  u_xlat23 = (x_297 * x_298);
  let x_300 : f32 = u_xlat23;
  let x_302 : f32 = u_xlat3.x;
  u_xlat23 = (x_300 * x_302);
  let x_304 : f32 = u_xlat22;
  let x_305 : f32 = u_xlat23;
  u_xlat22 = (x_304 * x_305);
  let x_309 : vec4<f32> = x_18.x_Color1;
  let x_312 : vec4<f32> = x_18.x_Color2;
  let x_315 : vec3<f32> = (vec3<f32>(x_309.x, x_309.y, x_309.z) + -(vec3<f32>(x_312.x, x_312.y, x_312.z)));
  let x_316 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_315.x, x_315.y, x_315.z, x_316.w);
  let x_318 : f32 = u_xlat22;
  let x_320 : vec4<f32> = u_xlat6;
  let x_324 : vec4<f32> = x_18.x_Color2;
  let x_326 : vec3<f32> = ((vec3<f32>(x_318, x_318, x_318) * vec3<f32>(x_320.x, x_320.y, x_320.z)) + vec3<f32>(x_324.x, x_324.y, x_324.z));
  let x_327 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_326.x, x_326.y, x_326.z, x_327.w);
  let x_329 : vec4<f32> = u_xlat4;
  let x_331 : vec4<f32> = u_xlat6;
  let x_333 : vec3<f32> = (vec3<f32>(x_329.x, x_329.y, x_329.z) + vec3<f32>(x_331.x, x_331.y, x_331.z));
  let x_334 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_333.x, x_333.y, x_333.z, x_334.w);
  let x_337 : f32 = u_xlat10.x;
  u_xlat22 = (-(x_337) + 1.0f);
  let x_343 : f32 = u_xlat3.z;
  SV_Target0.w = (-(x_343) + 1.0f);
  let x_348 : vec3<f32> = vs_TEXCOORD4;
  let x_352 : vec4<f32> = x_18.unity_WorldToLight[1i];
  u_xlat3 = (vec3<f32>(x_348.y, x_348.y, x_348.y) * vec3<f32>(x_352.x, x_352.y, x_352.z));
  let x_356 : vec4<f32> = x_18.unity_WorldToLight[0i];
  let x_358 : vec3<f32> = vs_TEXCOORD4;
  let x_361 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_356.x, x_356.y, x_356.z) * vec3<f32>(x_358.x, x_358.x, x_358.x)) + x_361);
  let x_364 : vec4<f32> = x_18.unity_WorldToLight[2i];
  let x_366 : vec3<f32> = vs_TEXCOORD4;
  let x_369 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_364.x, x_364.y, x_364.z) * vec3<f32>(x_366.z, x_366.z, x_366.z)) + x_369);
  let x_371 : vec3<f32> = u_xlat3;
  let x_373 : vec4<f32> = x_18.unity_WorldToLight[3i];
  u_xlat3 = (x_371 + vec3<f32>(x_373.x, x_373.y, x_373.z));
  let x_381 : f32 = x_18.unity_ProbeVolumeParams.x;
  u_xlatb23 = (x_381 == 1.0f);
  let x_383 : bool = u_xlatb23;
  if (x_383) {
    let x_387 : f32 = x_18.unity_ProbeVolumeParams.y;
    u_xlatb23 = (x_387 == 1.0f);
    let x_389 : vec3<f32> = vs_TEXCOORD4;
    let x_393 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[1i];
    let x_395 : vec3<f32> = (vec3<f32>(x_389.y, x_389.y, x_389.y) * vec3<f32>(x_393.x, x_393.y, x_393.z));
    let x_396 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_395.x, x_395.y, x_395.z, x_396.w);
    let x_399 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[0i];
    let x_401 : vec3<f32> = vs_TEXCOORD4;
    let x_404 : vec4<f32> = u_xlat6;
    let x_406 : vec3<f32> = ((vec3<f32>(x_399.x, x_399.y, x_399.z) * vec3<f32>(x_401.x, x_401.x, x_401.x)) + vec3<f32>(x_404.x, x_404.y, x_404.z));
    let x_407 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_406.x, x_406.y, x_406.z, x_407.w);
    let x_410 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[2i];
    let x_412 : vec3<f32> = vs_TEXCOORD4;
    let x_415 : vec4<f32> = u_xlat6;
    let x_417 : vec3<f32> = ((vec3<f32>(x_410.x, x_410.y, x_410.z) * vec3<f32>(x_412.z, x_412.z, x_412.z)) + vec3<f32>(x_415.x, x_415.y, x_415.z));
    let x_418 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_417.x, x_417.y, x_417.z, x_418.w);
    let x_420 : vec4<f32> = u_xlat6;
    let x_423 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[3i];
    let x_425 : vec3<f32> = (vec3<f32>(x_420.x, x_420.y, x_420.z) + vec3<f32>(x_423.x, x_423.y, x_423.z));
    let x_426 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_425.x, x_425.y, x_425.z, x_426.w);
    let x_428 : bool = u_xlatb23;
    if (x_428) {
      let x_432 : vec4<f32> = u_xlat6;
      x_429 = vec3<f32>(x_432.x, x_432.y, x_432.z);
    } else {
      let x_435 : vec3<f32> = vs_TEXCOORD4;
      x_429 = x_435;
    }
    let x_436 : vec3<f32> = x_429;
    let x_437 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_436.x, x_436.y, x_436.z, x_437.w);
    let x_439 : vec4<f32> = u_xlat6;
    let x_443 : vec3<f32> = x_18.unity_ProbeVolumeMin;
    let x_445 : vec3<f32> = (vec3<f32>(x_439.x, x_439.y, x_439.z) + -(x_443));
    let x_446 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_445.x, x_445.y, x_445.z, x_446.w);
    let x_448 : vec4<f32> = u_xlat6;
    let x_452 : vec3<f32> = x_18.unity_ProbeVolumeSizeInv;
    let x_453 : vec3<f32> = (vec3<f32>(x_448.x, x_448.y, x_448.z) * x_452);
    let x_454 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_454.x, x_453.x, x_453.y, x_453.z);
    let x_457 : f32 = u_xlat6.y;
    u_xlat23 = ((x_457 * 0.25f) + 0.75f);
    let x_464 : f32 = x_18.unity_ProbeVolumeParams.z;
    u_xlat24 = ((x_464 * 0.5f) + 0.75f);
    let x_467 : f32 = u_xlat23;
    let x_468 : f32 = u_xlat24;
    u_xlat6.x = max(x_467, x_468);
    let x_479 : vec4<f32> = u_xlat6;
    let x_481 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_479.x, x_479.z, x_479.w));
    u_xlat6 = x_481;
  } else {
    u_xlat6.x = 1.0f;
    u_xlat6.y = 1.0f;
    u_xlat6.z = 1.0f;
    u_xlat6.w = 1.0f;
  }
  let x_487 : vec4<f32> = u_xlat6;
  let x_490 : vec4<f32> = x_18.unity_OcclusionMaskSelector;
  u_xlat23 = dot(x_487, x_490);
  let x_492 : f32 = u_xlat23;
  u_xlat23 = clamp(x_492, 0.0f, 1.0f);
  let x_494 : vec3<f32> = u_xlat3;
  let x_495 : vec3<f32> = u_xlat3;
  u_xlat3.x = dot(x_494, x_495);
  let x_503 : vec3<f32> = u_xlat3;
  let x_505 : vec4<f32> = textureSample(x_LightTexture0, sampler_LightTexture0, vec2<f32>(x_503.x, x_503.x));
  u_xlat3.x = x_505.x;
  let x_508 : f32 = u_xlat23;
  let x_510 : f32 = u_xlat3.x;
  u_xlat23 = (x_508 * x_510);
  let x_513 : vec3<f32> = vs_TEXCOORD1;
  let x_514 : vec3<f32> = u_xlat5;
  u_xlat3.x = dot(x_513, x_514);
  let x_518 : vec3<f32> = vs_TEXCOORD2;
  let x_519 : vec3<f32> = u_xlat5;
  u_xlat3.y = dot(x_518, x_519);
  let x_523 : vec3<f32> = vs_TEXCOORD3;
  let x_524 : vec3<f32> = u_xlat5;
  u_xlat3.z = dot(x_523, x_524);
  let x_527 : vec3<f32> = u_xlat3;
  let x_528 : vec3<f32> = u_xlat3;
  u_xlat24 = dot(x_527, x_528);
  let x_530 : f32 = u_xlat24;
  u_xlat24 = inverseSqrt(x_530);
  let x_532 : f32 = u_xlat24;
  let x_534 : vec3<f32> = u_xlat3;
  u_xlat3 = (vec3<f32>(x_532, x_532, x_532) * x_534);
  let x_536 : f32 = u_xlat23;
  let x_540 : vec4<f32> = x_18.x_LightColor0;
  u_xlat5 = (vec3<f32>(x_536, x_536, x_536) * vec3<f32>(x_540.x, x_540.y, x_540.z));
  let x_543 : vec4<f32> = u_xlat4;
  let x_547 : vec3<f32> = (vec3<f32>(x_543.x, x_543.y, x_543.z) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_548 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_547.x, x_547.y, x_547.z, x_548.w);
  let x_552 : f32 = x_18.x_Metallic;
  let x_554 : f32 = x_18.x_Metallic;
  let x_556 : f32 = x_18.x_Metallic;
  let x_557 : vec3<f32> = vec3<f32>(x_552, x_554, x_556);
  let x_562 : vec4<f32> = u_xlat6;
  let x_567 : vec3<f32> = ((vec3<f32>(x_557.x, x_557.y, x_557.z) * vec3<f32>(x_562.x, x_562.y, x_562.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_568 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_567.x, x_567.y, x_567.z, x_568.w);
  let x_571 : f32 = x_18.x_Metallic;
  u_xlat23 = ((-(x_571) * 0.959999979f) + 0.959999979f);
  let x_576 : f32 = u_xlat23;
  let x_578 : vec4<f32> = u_xlat4;
  let x_580 : vec3<f32> = (vec3<f32>(x_576, x_576, x_576) * vec3<f32>(x_578.x, x_578.y, x_578.z));
  let x_581 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_580.x, x_580.y, x_580.z, x_581.w);
  let x_583 : f32 = u_xlat22;
  let x_587 : f32 = x_18.x_Glossiness;
  u_xlat22 = ((-(x_583) * x_587) + 1.0f);
  let x_590 : vec3<f32> = u_xlat0;
  let x_591 : f32 = u_xlat21;
  let x_594 : vec3<f32> = u_xlat2;
  u_xlat0 = ((x_590 * vec3<f32>(x_591, x_591, x_591)) + x_594);
  let x_596 : vec3<f32> = u_xlat0;
  let x_597 : vec3<f32> = u_xlat0;
  u_xlat21 = dot(x_596, x_597);
  let x_599 : f32 = u_xlat21;
  u_xlat21 = max(x_599, 0.001f);
  let x_602 : f32 = u_xlat21;
  u_xlat21 = inverseSqrt(x_602);
  let x_604 : f32 = u_xlat21;
  let x_606 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_604, x_604, x_604) * x_606);
  let x_608 : vec3<f32> = u_xlat3;
  let x_609 : vec3<f32> = u_xlat2;
  u_xlat21 = dot(x_608, x_609);
  let x_611 : vec3<f32> = u_xlat3;
  let x_612 : vec3<f32> = u_xlat1;
  u_xlat2.x = dot(x_611, x_612);
  let x_616 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_616, 0.0f, 1.0f);
  let x_620 : vec3<f32> = u_xlat3;
  let x_621 : vec3<f32> = u_xlat0;
  u_xlat9 = dot(x_620, x_621);
  let x_623 : f32 = u_xlat9;
  u_xlat9 = clamp(x_623, 0.0f, 1.0f);
  let x_625 : vec3<f32> = u_xlat1;
  let x_626 : vec3<f32> = u_xlat0;
  u_xlat0.x = dot(x_625, x_626);
  let x_630 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_630, 0.0f, 1.0f);
  let x_635 : f32 = u_xlat0.x;
  let x_637 : f32 = u_xlat0.x;
  u_xlat7.x = (x_635 * x_637);
  let x_640 : vec3<f32> = u_xlat7;
  let x_642 : f32 = u_xlat22;
  u_xlat7.x = dot(vec2<f32>(x_640.x, x_640.x), vec2<f32>(x_642, x_642));
  let x_647 : f32 = u_xlat7.x;
  u_xlat7.x = (x_647 + -0.5f);
  let x_653 : f32 = u_xlat2.x;
  u_xlat14 = (-(x_653) + 1.0f);
  let x_656 : f32 = u_xlat14;
  let x_657 : f32 = u_xlat14;
  u_xlat1.x = (x_656 * x_657);
  let x_661 : f32 = u_xlat1.x;
  let x_663 : f32 = u_xlat1.x;
  u_xlat1.x = (x_661 * x_663);
  let x_666 : f32 = u_xlat14;
  let x_668 : f32 = u_xlat1.x;
  u_xlat14 = (x_666 * x_668);
  let x_671 : f32 = u_xlat7.x;
  let x_672 : f32 = u_xlat14;
  u_xlat14 = ((x_671 * x_672) + 1.0f);
  let x_675 : f32 = u_xlat21;
  u_xlat1.x = (-(abs(x_675)) + 1.0f);
  let x_682 : f32 = u_xlat1.x;
  let x_684 : f32 = u_xlat1.x;
  u_xlat8 = (x_682 * x_684);
  let x_686 : f32 = u_xlat8;
  let x_687 : f32 = u_xlat8;
  u_xlat8 = (x_686 * x_687);
  let x_690 : f32 = u_xlat1.x;
  let x_691 : f32 = u_xlat8;
  u_xlat1.x = (x_690 * x_691);
  let x_695 : f32 = u_xlat7.x;
  let x_697 : f32 = u_xlat1.x;
  u_xlat7.x = ((x_695 * x_697) + 1.0f);
  let x_702 : f32 = u_xlat7.x;
  let x_703 : f32 = u_xlat14;
  u_xlat7.x = (x_702 * x_703);
  let x_706 : f32 = u_xlat22;
  let x_707 : f32 = u_xlat22;
  u_xlat14 = (x_706 * x_707);
  let x_709 : f32 = u_xlat14;
  u_xlat14 = max(x_709, 0.002f);
  let x_712 : f32 = u_xlat14;
  u_xlat1.x = (-(x_712) + 1.0f);
  let x_716 : f32 = u_xlat21;
  let x_719 : f32 = u_xlat1.x;
  let x_721 : f32 = u_xlat14;
  u_xlat8 = ((abs(x_716) * x_719) + x_721);
  let x_724 : f32 = u_xlat2.x;
  let x_726 : f32 = u_xlat1.x;
  let x_728 : f32 = u_xlat14;
  u_xlat1.x = ((x_724 * x_726) + x_728);
  let x_731 : f32 = u_xlat21;
  let x_734 : f32 = u_xlat1.x;
  u_xlat21 = (abs(x_731) * x_734);
  let x_737 : f32 = u_xlat2.x;
  let x_738 : f32 = u_xlat8;
  let x_740 : f32 = u_xlat21;
  u_xlat21 = ((x_737 * x_738) + x_740);
  let x_742 : f32 = u_xlat21;
  u_xlat21 = (x_742 + 0.00001f);
  let x_745 : f32 = u_xlat21;
  u_xlat21 = (0.5f / x_745);
  let x_747 : f32 = u_xlat14;
  let x_748 : f32 = u_xlat14;
  u_xlat14 = (x_747 * x_748);
  let x_750 : f32 = u_xlat9;
  let x_751 : f32 = u_xlat14;
  let x_753 : f32 = u_xlat9;
  u_xlat1.x = ((x_750 * x_751) + -(x_753));
  let x_758 : f32 = u_xlat1.x;
  let x_759 : f32 = u_xlat9;
  u_xlat1.x = ((x_758 * x_759) + 1.0f);
  let x_763 : f32 = u_xlat14;
  u_xlat14 = (x_763 * 0.318309873f);
  let x_767 : f32 = u_xlat1.x;
  let x_769 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_767 * x_769) + 0.0000001f);
  let x_774 : f32 = u_xlat14;
  let x_776 : f32 = u_xlat1.x;
  u_xlat14 = (x_774 / x_776);
  let x_778 : f32 = u_xlat14;
  let x_779 : f32 = u_xlat21;
  u_xlat7.y = (x_778 * x_779);
  let x_782 : vec3<f32> = u_xlat2;
  let x_784 : vec3<f32> = u_xlat7;
  let x_786 : vec2<f32> = (vec2<f32>(x_782.x, x_782.x) * vec2<f32>(x_784.x, x_784.y));
  let x_787 : vec3<f32> = u_xlat7;
  u_xlat7 = vec3<f32>(x_786.x, x_786.y, x_787.z);
  let x_790 : f32 = u_xlat7.y;
  u_xlat14 = (x_790 * 3.141592741f);
  let x_793 : f32 = u_xlat14;
  u_xlat14 = max(x_793, 0.0f);
  let x_795 : vec4<f32> = u_xlat6;
  let x_797 : vec4<f32> = u_xlat6;
  u_xlat21 = dot(vec3<f32>(x_795.x, x_795.y, x_795.z), vec3<f32>(x_797.x, x_797.y, x_797.z));
  let x_801 : f32 = u_xlat21;
  u_xlatb21 = !((x_801 == 0.0f));
  let x_803 : bool = u_xlatb21;
  u_xlat21 = select(0.0f, 1.0f, x_803);
  let x_805 : f32 = u_xlat21;
  let x_806 : f32 = u_xlat14;
  u_xlat14 = (x_805 * x_806);
  let x_808 : vec3<f32> = u_xlat7;
  let x_810 : vec3<f32> = u_xlat5;
  u_xlat1 = (vec3<f32>(x_808.x, x_808.x, x_808.x) * x_810);
  let x_812 : vec3<f32> = u_xlat5;
  let x_813 : f32 = u_xlat14;
  u_xlat7 = (x_812 * vec3<f32>(x_813, x_813, x_813));
  let x_817 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_817) + 1.0f);
  let x_822 : f32 = u_xlat0.x;
  let x_824 : f32 = u_xlat0.x;
  u_xlat22 = (x_822 * x_824);
  let x_826 : f32 = u_xlat22;
  let x_827 : f32 = u_xlat22;
  u_xlat22 = (x_826 * x_827);
  let x_830 : f32 = u_xlat0.x;
  let x_831 : f32 = u_xlat22;
  u_xlat0.x = (x_830 * x_831);
  let x_834 : vec4<f32> = u_xlat6;
  u_xlat2 = (-(vec3<f32>(x_834.x, x_834.y, x_834.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_839 : vec3<f32> = u_xlat2;
  let x_840 : vec3<f32> = u_xlat0;
  let x_843 : vec4<f32> = u_xlat6;
  u_xlat2 = ((x_839 * vec3<f32>(x_840.x, x_840.x, x_840.x)) + vec3<f32>(x_843.x, x_843.y, x_843.z));
  let x_846 : vec3<f32> = u_xlat7;
  let x_847 : vec3<f32> = u_xlat2;
  u_xlat0 = (x_846 * x_847);
  let x_849 : vec4<f32> = u_xlat4;
  let x_851 : vec3<f32> = u_xlat1;
  let x_853 : vec3<f32> = u_xlat0;
  let x_854 : vec3<f32> = ((vec3<f32>(x_849.x, x_849.y, x_849.z) * x_851) + x_853);
  let x_855 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_854.x, x_854.y, x_854.z, x_855.w);
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

