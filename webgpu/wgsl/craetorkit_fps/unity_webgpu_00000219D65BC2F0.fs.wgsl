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

@group(0) @binding(15) var sampler_CameraDepthTexture : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(0) @binding(1) var x_Normal : texture_2d<f32>;

@group(0) @binding(12) var sampler_Normal : sampler;

@group(0) @binding(2) var x_Noise : texture_2d<f32>;

@group(0) @binding(14) var sampler_Noise : sampler;

@group(0) @binding(3) var x_MainTex : texture_2d<f32>;

@group(0) @binding(11) var sampler_MainTex : sampler;

@group(0) @binding(4) var x_Ramp : texture_2d<f32>;

@group(0) @binding(13) var sampler_Ramp : sampler;

var<private> SV_Target0 : vec4<f32>;

@group(0) @binding(7) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(8) var samplerunity_ProbeVolumeSH : sampler;

@group(0) @binding(5) var x_LightTextureB0 : texture_2d<f32>;

@group(0) @binding(10) var sampler_LightTextureB0 : sampler;

@group(0) @binding(6) var x_LightTexture0 : texture_cube<f32>;

@group(0) @binding(9) var sampler_LightTexture0 : sampler;

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
  u_xlat24 = dot(x_494, x_495);
  let x_502 : f32 = u_xlat24;
  let x_504 : vec4<f32> = textureSample(x_LightTextureB0, sampler_LightTextureB0, vec2<f32>(x_502, x_502));
  u_xlat24 = x_504.x;
  let x_514 : vec3<f32> = u_xlat3;
  let x_515 : vec4<f32> = textureSample(x_LightTexture0, sampler_LightTexture0, x_514);
  u_xlat3.x = x_515.w;
  let x_519 : f32 = u_xlat3.x;
  let x_520 : f32 = u_xlat24;
  u_xlat3.x = (x_519 * x_520);
  let x_523 : f32 = u_xlat23;
  let x_525 : f32 = u_xlat3.x;
  u_xlat23 = (x_523 * x_525);
  let x_528 : vec3<f32> = vs_TEXCOORD1;
  let x_529 : vec3<f32> = u_xlat5;
  u_xlat3.x = dot(x_528, x_529);
  let x_533 : vec3<f32> = vs_TEXCOORD2;
  let x_534 : vec3<f32> = u_xlat5;
  u_xlat3.y = dot(x_533, x_534);
  let x_538 : vec3<f32> = vs_TEXCOORD3;
  let x_539 : vec3<f32> = u_xlat5;
  u_xlat3.z = dot(x_538, x_539);
  let x_542 : vec3<f32> = u_xlat3;
  let x_543 : vec3<f32> = u_xlat3;
  u_xlat24 = dot(x_542, x_543);
  let x_545 : f32 = u_xlat24;
  u_xlat24 = inverseSqrt(x_545);
  let x_547 : f32 = u_xlat24;
  let x_549 : vec3<f32> = u_xlat3;
  u_xlat3 = (vec3<f32>(x_547, x_547, x_547) * x_549);
  let x_551 : f32 = u_xlat23;
  let x_555 : vec4<f32> = x_18.x_LightColor0;
  u_xlat5 = (vec3<f32>(x_551, x_551, x_551) * vec3<f32>(x_555.x, x_555.y, x_555.z));
  let x_558 : vec4<f32> = u_xlat4;
  let x_562 : vec3<f32> = (vec3<f32>(x_558.x, x_558.y, x_558.z) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_563 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_562.x, x_562.y, x_562.z, x_563.w);
  let x_567 : f32 = x_18.x_Metallic;
  let x_569 : f32 = x_18.x_Metallic;
  let x_571 : f32 = x_18.x_Metallic;
  let x_572 : vec3<f32> = vec3<f32>(x_567, x_569, x_571);
  let x_577 : vec4<f32> = u_xlat6;
  let x_582 : vec3<f32> = ((vec3<f32>(x_572.x, x_572.y, x_572.z) * vec3<f32>(x_577.x, x_577.y, x_577.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_583 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_582.x, x_582.y, x_582.z, x_583.w);
  let x_586 : f32 = x_18.x_Metallic;
  u_xlat23 = ((-(x_586) * 0.959999979f) + 0.959999979f);
  let x_591 : f32 = u_xlat23;
  let x_593 : vec4<f32> = u_xlat4;
  let x_595 : vec3<f32> = (vec3<f32>(x_591, x_591, x_591) * vec3<f32>(x_593.x, x_593.y, x_593.z));
  let x_596 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_595.x, x_595.y, x_595.z, x_596.w);
  let x_598 : f32 = u_xlat22;
  let x_602 : f32 = x_18.x_Glossiness;
  u_xlat22 = ((-(x_598) * x_602) + 1.0f);
  let x_605 : vec3<f32> = u_xlat0;
  let x_606 : f32 = u_xlat21;
  let x_609 : vec3<f32> = u_xlat2;
  u_xlat0 = ((x_605 * vec3<f32>(x_606, x_606, x_606)) + x_609);
  let x_611 : vec3<f32> = u_xlat0;
  let x_612 : vec3<f32> = u_xlat0;
  u_xlat21 = dot(x_611, x_612);
  let x_614 : f32 = u_xlat21;
  u_xlat21 = max(x_614, 0.001f);
  let x_617 : f32 = u_xlat21;
  u_xlat21 = inverseSqrt(x_617);
  let x_619 : f32 = u_xlat21;
  let x_621 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_619, x_619, x_619) * x_621);
  let x_623 : vec3<f32> = u_xlat3;
  let x_624 : vec3<f32> = u_xlat2;
  u_xlat21 = dot(x_623, x_624);
  let x_626 : vec3<f32> = u_xlat3;
  let x_627 : vec3<f32> = u_xlat1;
  u_xlat2.x = dot(x_626, x_627);
  let x_631 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_631, 0.0f, 1.0f);
  let x_635 : vec3<f32> = u_xlat3;
  let x_636 : vec3<f32> = u_xlat0;
  u_xlat9 = dot(x_635, x_636);
  let x_638 : f32 = u_xlat9;
  u_xlat9 = clamp(x_638, 0.0f, 1.0f);
  let x_640 : vec3<f32> = u_xlat1;
  let x_641 : vec3<f32> = u_xlat0;
  u_xlat0.x = dot(x_640, x_641);
  let x_645 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_645, 0.0f, 1.0f);
  let x_650 : f32 = u_xlat0.x;
  let x_652 : f32 = u_xlat0.x;
  u_xlat7.x = (x_650 * x_652);
  let x_655 : vec3<f32> = u_xlat7;
  let x_657 : f32 = u_xlat22;
  u_xlat7.x = dot(vec2<f32>(x_655.x, x_655.x), vec2<f32>(x_657, x_657));
  let x_662 : f32 = u_xlat7.x;
  u_xlat7.x = (x_662 + -0.5f);
  let x_668 : f32 = u_xlat2.x;
  u_xlat14 = (-(x_668) + 1.0f);
  let x_671 : f32 = u_xlat14;
  let x_672 : f32 = u_xlat14;
  u_xlat1.x = (x_671 * x_672);
  let x_676 : f32 = u_xlat1.x;
  let x_678 : f32 = u_xlat1.x;
  u_xlat1.x = (x_676 * x_678);
  let x_681 : f32 = u_xlat14;
  let x_683 : f32 = u_xlat1.x;
  u_xlat14 = (x_681 * x_683);
  let x_686 : f32 = u_xlat7.x;
  let x_687 : f32 = u_xlat14;
  u_xlat14 = ((x_686 * x_687) + 1.0f);
  let x_690 : f32 = u_xlat21;
  u_xlat1.x = (-(abs(x_690)) + 1.0f);
  let x_697 : f32 = u_xlat1.x;
  let x_699 : f32 = u_xlat1.x;
  u_xlat8 = (x_697 * x_699);
  let x_701 : f32 = u_xlat8;
  let x_702 : f32 = u_xlat8;
  u_xlat8 = (x_701 * x_702);
  let x_705 : f32 = u_xlat1.x;
  let x_706 : f32 = u_xlat8;
  u_xlat1.x = (x_705 * x_706);
  let x_710 : f32 = u_xlat7.x;
  let x_712 : f32 = u_xlat1.x;
  u_xlat7.x = ((x_710 * x_712) + 1.0f);
  let x_717 : f32 = u_xlat7.x;
  let x_718 : f32 = u_xlat14;
  u_xlat7.x = (x_717 * x_718);
  let x_721 : f32 = u_xlat22;
  let x_722 : f32 = u_xlat22;
  u_xlat14 = (x_721 * x_722);
  let x_724 : f32 = u_xlat14;
  u_xlat14 = max(x_724, 0.002f);
  let x_727 : f32 = u_xlat14;
  u_xlat1.x = (-(x_727) + 1.0f);
  let x_731 : f32 = u_xlat21;
  let x_734 : f32 = u_xlat1.x;
  let x_736 : f32 = u_xlat14;
  u_xlat8 = ((abs(x_731) * x_734) + x_736);
  let x_739 : f32 = u_xlat2.x;
  let x_741 : f32 = u_xlat1.x;
  let x_743 : f32 = u_xlat14;
  u_xlat1.x = ((x_739 * x_741) + x_743);
  let x_746 : f32 = u_xlat21;
  let x_749 : f32 = u_xlat1.x;
  u_xlat21 = (abs(x_746) * x_749);
  let x_752 : f32 = u_xlat2.x;
  let x_753 : f32 = u_xlat8;
  let x_755 : f32 = u_xlat21;
  u_xlat21 = ((x_752 * x_753) + x_755);
  let x_757 : f32 = u_xlat21;
  u_xlat21 = (x_757 + 0.00001f);
  let x_760 : f32 = u_xlat21;
  u_xlat21 = (0.5f / x_760);
  let x_762 : f32 = u_xlat14;
  let x_763 : f32 = u_xlat14;
  u_xlat14 = (x_762 * x_763);
  let x_765 : f32 = u_xlat9;
  let x_766 : f32 = u_xlat14;
  let x_768 : f32 = u_xlat9;
  u_xlat1.x = ((x_765 * x_766) + -(x_768));
  let x_773 : f32 = u_xlat1.x;
  let x_774 : f32 = u_xlat9;
  u_xlat1.x = ((x_773 * x_774) + 1.0f);
  let x_778 : f32 = u_xlat14;
  u_xlat14 = (x_778 * 0.318309873f);
  let x_782 : f32 = u_xlat1.x;
  let x_784 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_782 * x_784) + 0.0000001f);
  let x_789 : f32 = u_xlat14;
  let x_791 : f32 = u_xlat1.x;
  u_xlat14 = (x_789 / x_791);
  let x_793 : f32 = u_xlat14;
  let x_794 : f32 = u_xlat21;
  u_xlat7.y = (x_793 * x_794);
  let x_797 : vec3<f32> = u_xlat2;
  let x_799 : vec3<f32> = u_xlat7;
  let x_801 : vec2<f32> = (vec2<f32>(x_797.x, x_797.x) * vec2<f32>(x_799.x, x_799.y));
  let x_802 : vec3<f32> = u_xlat7;
  u_xlat7 = vec3<f32>(x_801.x, x_801.y, x_802.z);
  let x_805 : f32 = u_xlat7.y;
  u_xlat14 = (x_805 * 3.141592741f);
  let x_808 : f32 = u_xlat14;
  u_xlat14 = max(x_808, 0.0f);
  let x_810 : vec4<f32> = u_xlat6;
  let x_812 : vec4<f32> = u_xlat6;
  u_xlat21 = dot(vec3<f32>(x_810.x, x_810.y, x_810.z), vec3<f32>(x_812.x, x_812.y, x_812.z));
  let x_816 : f32 = u_xlat21;
  u_xlatb21 = !((x_816 == 0.0f));
  let x_818 : bool = u_xlatb21;
  u_xlat21 = select(0.0f, 1.0f, x_818);
  let x_820 : f32 = u_xlat21;
  let x_821 : f32 = u_xlat14;
  u_xlat14 = (x_820 * x_821);
  let x_823 : vec3<f32> = u_xlat7;
  let x_825 : vec3<f32> = u_xlat5;
  u_xlat1 = (vec3<f32>(x_823.x, x_823.x, x_823.x) * x_825);
  let x_827 : vec3<f32> = u_xlat5;
  let x_828 : f32 = u_xlat14;
  u_xlat7 = (x_827 * vec3<f32>(x_828, x_828, x_828));
  let x_832 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_832) + 1.0f);
  let x_837 : f32 = u_xlat0.x;
  let x_839 : f32 = u_xlat0.x;
  u_xlat22 = (x_837 * x_839);
  let x_841 : f32 = u_xlat22;
  let x_842 : f32 = u_xlat22;
  u_xlat22 = (x_841 * x_842);
  let x_845 : f32 = u_xlat0.x;
  let x_846 : f32 = u_xlat22;
  u_xlat0.x = (x_845 * x_846);
  let x_849 : vec4<f32> = u_xlat6;
  u_xlat2 = (-(vec3<f32>(x_849.x, x_849.y, x_849.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_854 : vec3<f32> = u_xlat2;
  let x_855 : vec3<f32> = u_xlat0;
  let x_858 : vec4<f32> = u_xlat6;
  u_xlat2 = ((x_854 * vec3<f32>(x_855.x, x_855.x, x_855.x)) + vec3<f32>(x_858.x, x_858.y, x_858.z));
  let x_861 : vec3<f32> = u_xlat7;
  let x_862 : vec3<f32> = u_xlat2;
  u_xlat0 = (x_861 * x_862);
  let x_864 : vec4<f32> = u_xlat4;
  let x_866 : vec3<f32> = u_xlat1;
  let x_868 : vec3<f32> = u_xlat0;
  let x_869 : vec3<f32> = ((vec3<f32>(x_864.x, x_864.y, x_864.z) * x_866) + x_868);
  let x_870 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_869.x, x_869.y, x_869.z, x_870.w);
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

