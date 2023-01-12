struct PGlobals {
  x_Time : vec4<f32>,
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding : u32,
  x_ProjectionParams : vec4<f32>,
  x_ZBufferParams : vec4<f32>,
  x_WorldSpaceLightPos0 : vec4<f32>,
  unity_OcclusionMaskSelector : vec4<f32>,
  unity_FogParams : vec4<f32>,
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

var<private> vs_TEXCOORD9 : f32;

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
  var x_430 : vec3<f32>;
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
  let x_365 : vec4<f32> = x_18.unity_WorldToLight[2i];
  let x_367 : vec3<f32> = vs_TEXCOORD4;
  let x_370 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_365.x, x_365.y, x_365.z) * vec3<f32>(x_367.z, x_367.z, x_367.z)) + x_370);
  let x_372 : vec3<f32> = u_xlat3;
  let x_374 : vec4<f32> = x_18.unity_WorldToLight[3i];
  u_xlat3 = (x_372 + vec3<f32>(x_374.x, x_374.y, x_374.z));
  let x_382 : f32 = x_18.unity_ProbeVolumeParams.x;
  u_xlatb23 = (x_382 == 1.0f);
  let x_384 : bool = u_xlatb23;
  if (x_384) {
    let x_388 : f32 = x_18.unity_ProbeVolumeParams.y;
    u_xlatb23 = (x_388 == 1.0f);
    let x_390 : vec3<f32> = vs_TEXCOORD4;
    let x_394 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[1i];
    let x_396 : vec3<f32> = (vec3<f32>(x_390.y, x_390.y, x_390.y) * vec3<f32>(x_394.x, x_394.y, x_394.z));
    let x_397 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_396.x, x_396.y, x_396.z, x_397.w);
    let x_400 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[0i];
    let x_402 : vec3<f32> = vs_TEXCOORD4;
    let x_405 : vec4<f32> = u_xlat6;
    let x_407 : vec3<f32> = ((vec3<f32>(x_400.x, x_400.y, x_400.z) * vec3<f32>(x_402.x, x_402.x, x_402.x)) + vec3<f32>(x_405.x, x_405.y, x_405.z));
    let x_408 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_407.x, x_407.y, x_407.z, x_408.w);
    let x_411 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[2i];
    let x_413 : vec3<f32> = vs_TEXCOORD4;
    let x_416 : vec4<f32> = u_xlat6;
    let x_418 : vec3<f32> = ((vec3<f32>(x_411.x, x_411.y, x_411.z) * vec3<f32>(x_413.z, x_413.z, x_413.z)) + vec3<f32>(x_416.x, x_416.y, x_416.z));
    let x_419 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_418.x, x_418.y, x_418.z, x_419.w);
    let x_421 : vec4<f32> = u_xlat6;
    let x_424 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[3i];
    let x_426 : vec3<f32> = (vec3<f32>(x_421.x, x_421.y, x_421.z) + vec3<f32>(x_424.x, x_424.y, x_424.z));
    let x_427 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_426.x, x_426.y, x_426.z, x_427.w);
    let x_429 : bool = u_xlatb23;
    if (x_429) {
      let x_433 : vec4<f32> = u_xlat6;
      x_430 = vec3<f32>(x_433.x, x_433.y, x_433.z);
    } else {
      let x_436 : vec3<f32> = vs_TEXCOORD4;
      x_430 = x_436;
    }
    let x_437 : vec3<f32> = x_430;
    let x_438 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_437.x, x_437.y, x_437.z, x_438.w);
    let x_440 : vec4<f32> = u_xlat6;
    let x_444 : vec3<f32> = x_18.unity_ProbeVolumeMin;
    let x_446 : vec3<f32> = (vec3<f32>(x_440.x, x_440.y, x_440.z) + -(x_444));
    let x_447 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_446.x, x_446.y, x_446.z, x_447.w);
    let x_449 : vec4<f32> = u_xlat6;
    let x_453 : vec3<f32> = x_18.unity_ProbeVolumeSizeInv;
    let x_454 : vec3<f32> = (vec3<f32>(x_449.x, x_449.y, x_449.z) * x_453);
    let x_455 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_455.x, x_454.x, x_454.y, x_454.z);
    let x_458 : f32 = u_xlat6.y;
    u_xlat23 = ((x_458 * 0.25f) + 0.75f);
    let x_465 : f32 = x_18.unity_ProbeVolumeParams.z;
    u_xlat24 = ((x_465 * 0.5f) + 0.75f);
    let x_468 : f32 = u_xlat23;
    let x_469 : f32 = u_xlat24;
    u_xlat6.x = max(x_468, x_469);
    let x_480 : vec4<f32> = u_xlat6;
    let x_482 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_480.x, x_480.z, x_480.w));
    u_xlat6 = x_482;
  } else {
    u_xlat6.x = 1.0f;
    u_xlat6.y = 1.0f;
    u_xlat6.z = 1.0f;
    u_xlat6.w = 1.0f;
  }
  let x_488 : vec4<f32> = u_xlat6;
  let x_491 : vec4<f32> = x_18.unity_OcclusionMaskSelector;
  u_xlat23 = dot(x_488, x_491);
  let x_493 : f32 = u_xlat23;
  u_xlat23 = clamp(x_493, 0.0f, 1.0f);
  let x_495 : vec3<f32> = u_xlat3;
  let x_496 : vec3<f32> = u_xlat3;
  u_xlat24 = dot(x_495, x_496);
  let x_503 : f32 = u_xlat24;
  let x_505 : vec4<f32> = textureSample(x_LightTextureB0, sampler_LightTextureB0, vec2<f32>(x_503, x_503));
  u_xlat24 = x_505.x;
  let x_515 : vec3<f32> = u_xlat3;
  let x_516 : vec4<f32> = textureSample(x_LightTexture0, sampler_LightTexture0, x_515);
  u_xlat3.x = x_516.w;
  let x_520 : f32 = u_xlat3.x;
  let x_521 : f32 = u_xlat24;
  u_xlat3.x = (x_520 * x_521);
  let x_524 : f32 = u_xlat23;
  let x_526 : f32 = u_xlat3.x;
  u_xlat23 = (x_524 * x_526);
  let x_529 : vec3<f32> = vs_TEXCOORD1;
  let x_530 : vec3<f32> = u_xlat5;
  u_xlat3.x = dot(x_529, x_530);
  let x_534 : vec3<f32> = vs_TEXCOORD2;
  let x_535 : vec3<f32> = u_xlat5;
  u_xlat3.y = dot(x_534, x_535);
  let x_539 : vec3<f32> = vs_TEXCOORD3;
  let x_540 : vec3<f32> = u_xlat5;
  u_xlat3.z = dot(x_539, x_540);
  let x_543 : vec3<f32> = u_xlat3;
  let x_544 : vec3<f32> = u_xlat3;
  u_xlat24 = dot(x_543, x_544);
  let x_546 : f32 = u_xlat24;
  u_xlat24 = inverseSqrt(x_546);
  let x_548 : f32 = u_xlat24;
  let x_550 : vec3<f32> = u_xlat3;
  u_xlat3 = (vec3<f32>(x_548, x_548, x_548) * x_550);
  let x_552 : f32 = u_xlat23;
  let x_556 : vec4<f32> = x_18.x_LightColor0;
  u_xlat5 = (vec3<f32>(x_552, x_552, x_552) * vec3<f32>(x_556.x, x_556.y, x_556.z));
  let x_559 : vec4<f32> = u_xlat4;
  let x_563 : vec3<f32> = (vec3<f32>(x_559.x, x_559.y, x_559.z) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_564 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_563.x, x_563.y, x_563.z, x_564.w);
  let x_568 : f32 = x_18.x_Metallic;
  let x_570 : f32 = x_18.x_Metallic;
  let x_572 : f32 = x_18.x_Metallic;
  let x_573 : vec3<f32> = vec3<f32>(x_568, x_570, x_572);
  let x_578 : vec4<f32> = u_xlat6;
  let x_583 : vec3<f32> = ((vec3<f32>(x_573.x, x_573.y, x_573.z) * vec3<f32>(x_578.x, x_578.y, x_578.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_584 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_583.x, x_583.y, x_583.z, x_584.w);
  let x_587 : f32 = x_18.x_Metallic;
  u_xlat23 = ((-(x_587) * 0.959999979f) + 0.959999979f);
  let x_592 : f32 = u_xlat23;
  let x_594 : vec4<f32> = u_xlat4;
  let x_596 : vec3<f32> = (vec3<f32>(x_592, x_592, x_592) * vec3<f32>(x_594.x, x_594.y, x_594.z));
  let x_597 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_596.x, x_596.y, x_596.z, x_597.w);
  let x_599 : f32 = u_xlat22;
  let x_603 : f32 = x_18.x_Glossiness;
  u_xlat22 = ((-(x_599) * x_603) + 1.0f);
  let x_606 : vec3<f32> = u_xlat0;
  let x_607 : f32 = u_xlat21;
  let x_610 : vec3<f32> = u_xlat2;
  u_xlat0 = ((x_606 * vec3<f32>(x_607, x_607, x_607)) + x_610);
  let x_612 : vec3<f32> = u_xlat0;
  let x_613 : vec3<f32> = u_xlat0;
  u_xlat21 = dot(x_612, x_613);
  let x_615 : f32 = u_xlat21;
  u_xlat21 = max(x_615, 0.001f);
  let x_618 : f32 = u_xlat21;
  u_xlat21 = inverseSqrt(x_618);
  let x_620 : f32 = u_xlat21;
  let x_622 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_620, x_620, x_620) * x_622);
  let x_624 : vec3<f32> = u_xlat3;
  let x_625 : vec3<f32> = u_xlat2;
  u_xlat21 = dot(x_624, x_625);
  let x_627 : vec3<f32> = u_xlat3;
  let x_628 : vec3<f32> = u_xlat1;
  u_xlat2.x = dot(x_627, x_628);
  let x_632 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_632, 0.0f, 1.0f);
  let x_636 : vec3<f32> = u_xlat3;
  let x_637 : vec3<f32> = u_xlat0;
  u_xlat9 = dot(x_636, x_637);
  let x_639 : f32 = u_xlat9;
  u_xlat9 = clamp(x_639, 0.0f, 1.0f);
  let x_641 : vec3<f32> = u_xlat1;
  let x_642 : vec3<f32> = u_xlat0;
  u_xlat0.x = dot(x_641, x_642);
  let x_646 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_646, 0.0f, 1.0f);
  let x_651 : f32 = u_xlat0.x;
  let x_653 : f32 = u_xlat0.x;
  u_xlat7.x = (x_651 * x_653);
  let x_656 : vec3<f32> = u_xlat7;
  let x_658 : f32 = u_xlat22;
  u_xlat7.x = dot(vec2<f32>(x_656.x, x_656.x), vec2<f32>(x_658, x_658));
  let x_663 : f32 = u_xlat7.x;
  u_xlat7.x = (x_663 + -0.5f);
  let x_669 : f32 = u_xlat2.x;
  u_xlat14 = (-(x_669) + 1.0f);
  let x_672 : f32 = u_xlat14;
  let x_673 : f32 = u_xlat14;
  u_xlat1.x = (x_672 * x_673);
  let x_677 : f32 = u_xlat1.x;
  let x_679 : f32 = u_xlat1.x;
  u_xlat1.x = (x_677 * x_679);
  let x_682 : f32 = u_xlat14;
  let x_684 : f32 = u_xlat1.x;
  u_xlat14 = (x_682 * x_684);
  let x_687 : f32 = u_xlat7.x;
  let x_688 : f32 = u_xlat14;
  u_xlat14 = ((x_687 * x_688) + 1.0f);
  let x_691 : f32 = u_xlat21;
  u_xlat1.x = (-(abs(x_691)) + 1.0f);
  let x_698 : f32 = u_xlat1.x;
  let x_700 : f32 = u_xlat1.x;
  u_xlat8 = (x_698 * x_700);
  let x_702 : f32 = u_xlat8;
  let x_703 : f32 = u_xlat8;
  u_xlat8 = (x_702 * x_703);
  let x_706 : f32 = u_xlat1.x;
  let x_707 : f32 = u_xlat8;
  u_xlat1.x = (x_706 * x_707);
  let x_711 : f32 = u_xlat7.x;
  let x_713 : f32 = u_xlat1.x;
  u_xlat7.x = ((x_711 * x_713) + 1.0f);
  let x_718 : f32 = u_xlat7.x;
  let x_719 : f32 = u_xlat14;
  u_xlat7.x = (x_718 * x_719);
  let x_722 : f32 = u_xlat22;
  let x_723 : f32 = u_xlat22;
  u_xlat14 = (x_722 * x_723);
  let x_725 : f32 = u_xlat14;
  u_xlat14 = max(x_725, 0.002f);
  let x_728 : f32 = u_xlat14;
  u_xlat1.x = (-(x_728) + 1.0f);
  let x_732 : f32 = u_xlat21;
  let x_735 : f32 = u_xlat1.x;
  let x_737 : f32 = u_xlat14;
  u_xlat8 = ((abs(x_732) * x_735) + x_737);
  let x_740 : f32 = u_xlat2.x;
  let x_742 : f32 = u_xlat1.x;
  let x_744 : f32 = u_xlat14;
  u_xlat1.x = ((x_740 * x_742) + x_744);
  let x_747 : f32 = u_xlat21;
  let x_750 : f32 = u_xlat1.x;
  u_xlat21 = (abs(x_747) * x_750);
  let x_753 : f32 = u_xlat2.x;
  let x_754 : f32 = u_xlat8;
  let x_756 : f32 = u_xlat21;
  u_xlat21 = ((x_753 * x_754) + x_756);
  let x_758 : f32 = u_xlat21;
  u_xlat21 = (x_758 + 0.00001f);
  let x_761 : f32 = u_xlat21;
  u_xlat21 = (0.5f / x_761);
  let x_763 : f32 = u_xlat14;
  let x_764 : f32 = u_xlat14;
  u_xlat14 = (x_763 * x_764);
  let x_766 : f32 = u_xlat9;
  let x_767 : f32 = u_xlat14;
  let x_769 : f32 = u_xlat9;
  u_xlat1.x = ((x_766 * x_767) + -(x_769));
  let x_774 : f32 = u_xlat1.x;
  let x_775 : f32 = u_xlat9;
  u_xlat1.x = ((x_774 * x_775) + 1.0f);
  let x_779 : f32 = u_xlat14;
  u_xlat14 = (x_779 * 0.318309873f);
  let x_783 : f32 = u_xlat1.x;
  let x_785 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_783 * x_785) + 0.0000001f);
  let x_790 : f32 = u_xlat14;
  let x_792 : f32 = u_xlat1.x;
  u_xlat14 = (x_790 / x_792);
  let x_794 : f32 = u_xlat14;
  let x_795 : f32 = u_xlat21;
  u_xlat7.y = (x_794 * x_795);
  let x_798 : vec3<f32> = u_xlat2;
  let x_800 : vec3<f32> = u_xlat7;
  let x_802 : vec2<f32> = (vec2<f32>(x_798.x, x_798.x) * vec2<f32>(x_800.x, x_800.y));
  let x_803 : vec3<f32> = u_xlat7;
  u_xlat7 = vec3<f32>(x_802.x, x_802.y, x_803.z);
  let x_806 : f32 = u_xlat7.y;
  u_xlat14 = (x_806 * 3.141592741f);
  let x_809 : f32 = u_xlat14;
  u_xlat14 = max(x_809, 0.0f);
  let x_811 : vec4<f32> = u_xlat6;
  let x_813 : vec4<f32> = u_xlat6;
  u_xlat21 = dot(vec3<f32>(x_811.x, x_811.y, x_811.z), vec3<f32>(x_813.x, x_813.y, x_813.z));
  let x_817 : f32 = u_xlat21;
  u_xlatb21 = !((x_817 == 0.0f));
  let x_819 : bool = u_xlatb21;
  u_xlat21 = select(0.0f, 1.0f, x_819);
  let x_821 : f32 = u_xlat21;
  let x_822 : f32 = u_xlat14;
  u_xlat14 = (x_821 * x_822);
  let x_824 : vec3<f32> = u_xlat7;
  let x_826 : vec3<f32> = u_xlat5;
  u_xlat1 = (vec3<f32>(x_824.x, x_824.x, x_824.x) * x_826);
  let x_828 : vec3<f32> = u_xlat5;
  let x_829 : f32 = u_xlat14;
  u_xlat7 = (x_828 * vec3<f32>(x_829, x_829, x_829));
  let x_833 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_833) + 1.0f);
  let x_838 : f32 = u_xlat0.x;
  let x_840 : f32 = u_xlat0.x;
  u_xlat22 = (x_838 * x_840);
  let x_842 : f32 = u_xlat22;
  let x_843 : f32 = u_xlat22;
  u_xlat22 = (x_842 * x_843);
  let x_846 : f32 = u_xlat0.x;
  let x_847 : f32 = u_xlat22;
  u_xlat0.x = (x_846 * x_847);
  let x_850 : vec4<f32> = u_xlat6;
  u_xlat2 = (-(vec3<f32>(x_850.x, x_850.y, x_850.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_855 : vec3<f32> = u_xlat2;
  let x_856 : vec3<f32> = u_xlat0;
  let x_859 : vec4<f32> = u_xlat6;
  u_xlat2 = ((x_855 * vec3<f32>(x_856.x, x_856.x, x_856.x)) + vec3<f32>(x_859.x, x_859.y, x_859.z));
  let x_862 : vec3<f32> = u_xlat7;
  let x_863 : vec3<f32> = u_xlat2;
  u_xlat0 = (x_862 * x_863);
  let x_865 : vec4<f32> = u_xlat4;
  let x_867 : vec3<f32> = u_xlat1;
  let x_869 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_865.x, x_865.y, x_865.z) * x_867) + x_869);
  let x_872 : f32 = vs_TEXCOORD9;
  let x_874 : f32 = x_18.x_ProjectionParams.y;
  u_xlat21 = (x_872 / x_874);
  let x_876 : f32 = u_xlat21;
  u_xlat21 = (-(x_876) + 1.0f);
  let x_879 : f32 = u_xlat21;
  let x_881 : f32 = x_18.x_ProjectionParams.z;
  u_xlat21 = (x_879 * x_881);
  let x_883 : f32 = u_xlat21;
  u_xlat21 = max(x_883, 0.0f);
  let x_885 : f32 = u_xlat21;
  let x_888 : f32 = x_18.unity_FogParams.x;
  u_xlat21 = (x_885 * x_888);
  let x_890 : f32 = u_xlat21;
  let x_891 : f32 = u_xlat21;
  u_xlat21 = (x_890 * -(x_891));
  let x_894 : f32 = u_xlat21;
  u_xlat21 = exp2(x_894);
  let x_896 : vec3<f32> = u_xlat0;
  let x_897 : f32 = u_xlat21;
  let x_899 : vec3<f32> = (x_896 * vec3<f32>(x_897, x_897, x_897));
  let x_900 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_899.x, x_899.y, x_899.z, x_900.w);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(5) vs_TEXCOORD4_param : vec3<f32>, @location(6) vs_TEXCOORD5_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(3) vs_TEXCOORD2_param : vec3<f32>, @location(4) vs_TEXCOORD3_param : vec3<f32>, @location(2) vs_TEXCOORD9_param : f32, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD5 = vs_TEXCOORD5_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD9 = vs_TEXCOORD9_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

