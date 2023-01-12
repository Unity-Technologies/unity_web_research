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

@group(0) @binding(5) var x_LightTexture0 : texture_2d<f32>;

@group(0) @binding(9) var sampler_LightTexture0 : sampler;

@group(0) @binding(6) var x_LightTextureB0 : texture_2d<f32>;

@group(0) @binding(10) var sampler_LightTextureB0 : sampler;

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
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat10 : vec3<f32>;
  var u_xlat5 : vec3<f32>;
  var u_xlat23 : f32;
  var u_xlat6 : vec4<f32>;
  var u_xlatb23 : bool;
  var x_434 : vec3<f32>;
  var u_xlat25 : f32;
  var u_xlatb25 : bool;
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
  let x_61 : vec4<f32> = vs_TEXCOORD5;
  let x_63 : vec4<f32> = vs_TEXCOORD5;
  let x_65 : vec2<f32> = (vec2<f32>(x_61.x, x_61.y) / vec2<f32>(x_63.w, x_63.w));
  let x_66 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_65.x, x_65.y, x_66.z, x_66.w);
  let x_78 : vec4<f32> = u_xlat3;
  let x_80 : vec4<f32> = textureSample(x_CameraDepthTexture, sampler_CameraDepthTexture, vec2<f32>(x_78.x, x_78.y));
  u_xlat22 = x_80.x;
  let x_88 : f32 = x_18.x_ZBufferParams.z;
  let x_89 : f32 = u_xlat22;
  let x_93 : f32 = x_18.x_ZBufferParams.w;
  u_xlat22 = ((x_88 * x_89) + x_93);
  let x_96 : f32 = u_xlat22;
  u_xlat22 = (1.0f / x_96);
  let x_98 : f32 = u_xlat22;
  let x_101 : f32 = vs_TEXCOORD5.z;
  u_xlat22 = (x_98 + -(x_101));
  let x_104 : f32 = u_xlat22;
  let x_109 : f32 = x_18.x_Edge;
  let x_112 : f32 = x_18.x_Fog;
  let x_115 : f32 = x_18.x_Fade;
  let x_118 : vec3<f32> = (abs(vec3<f32>(x_104, x_104, x_104)) + -(vec3<f32>(x_109, x_112, x_115)));
  let x_119 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_118.x, x_118.y, x_118.z, x_119.w);
  let x_121 : vec4<f32> = u_xlat3;
  let x_124 : f32 = x_18.x_Edge;
  let x_126 : f32 = x_18.x_Fog;
  let x_128 : f32 = x_18.x_Fade;
  let x_131 : vec3<f32> = (vec3<f32>(x_121.x, x_121.y, x_121.z) / -(vec3<f32>(x_124, x_126, x_128)));
  let x_132 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_131.x, x_131.y, x_131.z, x_132.w);
  let x_134 : vec4<f32> = u_xlat3;
  let x_139 : vec3<f32> = clamp(vec3<f32>(x_134.x, x_134.y, x_134.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_140 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_139.x, x_139.y, x_139.z, x_140.w);
  let x_144 : f32 = u_xlat3.y;
  u_xlat22 = (-(x_144) + 1.0f);
  let x_150 : vec4<f32> = x_18.x_Time;
  let x_157 : vec4<f32> = vs_TEXCOORD0;
  let x_159 : vec3<f32> = ((vec3<f32>(x_150.x, x_150.x, x_150.x) * vec3<f32>(0.200000003f, 0.100000001f, 0.200000003f)) + vec3<f32>(x_157.z, x_157.w, x_157.y));
  let x_160 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_159.x, x_159.y, x_159.z, x_160.w);
  let x_163 : vec4<f32> = u_xlat4;
  let x_167 : vec2<f32> = (vec2<f32>(x_163.x, x_163.y) * vec2<f32>(0.5f, 0.5f));
  let x_168 : vec3<f32> = u_xlat10;
  u_xlat10 = vec3<f32>(x_167.x, x_168.y, x_167.y);
  let x_176 : vec3<f32> = u_xlat10;
  let x_178 : vec4<f32> = textureSample(x_Normal, sampler_Normal, vec2<f32>(x_176.x, x_176.z));
  u_xlat5 = vec3<f32>(x_178.x, x_178.y, x_178.w);
  let x_181 : f32 = u_xlat5.z;
  let x_183 : f32 = u_xlat5.x;
  u_xlat5.x = (x_181 * x_183);
  let x_186 : vec3<f32> = u_xlat5;
  let x_193 : vec2<f32> = ((vec2<f32>(x_186.x, x_186.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_194 : vec3<f32> = u_xlat5;
  u_xlat5 = vec3<f32>(x_193.x, x_193.y, x_194.z);
  let x_197 : vec3<f32> = u_xlat5;
  let x_199 : vec3<f32> = u_xlat5;
  u_xlat23 = dot(vec2<f32>(x_197.x, x_197.y), vec2<f32>(x_199.x, x_199.y));
  let x_202 : f32 = u_xlat23;
  u_xlat23 = min(x_202, 1.0f);
  let x_204 : f32 = u_xlat23;
  u_xlat23 = (-(x_204) + 1.0f);
  let x_207 : f32 = u_xlat23;
  u_xlat5.z = sqrt(x_207);
  let x_210 : vec4<f32> = vs_TEXCOORD0;
  let x_211 : vec2<f32> = vec2<f32>(x_210.x, x_210.x);
  let x_212 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_211.x, x_212.y, x_212.z, x_211.y);
  let x_214 : vec3<f32> = u_xlat5;
  let x_218 : vec4<f32> = u_xlat4;
  let x_220 : vec2<f32> = ((vec2<f32>(x_214.x, x_214.y) * vec2<f32>(0.200000003f, 0.200000003f)) + vec2<f32>(x_218.w, x_218.z));
  let x_221 : vec3<f32> = u_xlat10;
  u_xlat10 = vec3<f32>(x_220.x, x_221.y, x_220.y);
  let x_224 : f32 = vs_TEXCOORD0.y;
  let x_226 : f32 = x_18.x_Time.x;
  u_xlat4.y = (x_224 + x_226);
  let x_229 : vec3<f32> = u_xlat5;
  let x_231 : vec4<f32> = u_xlat4;
  let x_233 : vec2<f32> = (vec2<f32>(x_229.x, x_229.y) + vec2<f32>(x_231.x, x_231.y));
  let x_234 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_233.x, x_233.y, x_234.z, x_234.w);
  let x_236 : vec4<f32> = u_xlat4;
  let x_238 : vec2<f32> = (vec2<f32>(x_236.x, x_236.y) * vec2<f32>(0.200000003f, 0.200000003f));
  let x_239 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_238.x, x_238.y, x_239.z, x_239.w);
  let x_246 : vec4<f32> = u_xlat4;
  let x_248 : vec4<f32> = textureSample(x_Noise, sampler_Noise, vec2<f32>(x_246.x, x_246.y));
  u_xlat23 = x_248.x;
  let x_255 : vec3<f32> = u_xlat10;
  let x_257 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_255.x, x_255.z));
  u_xlat10.x = x_257.x;
  u_xlat10.z = 0.0f;
  let x_266 : vec3<f32> = u_xlat10;
  let x_268 : vec4<f32> = textureSample(x_Ramp, sampler_Ramp, vec2<f32>(x_266.x, x_266.z));
  let x_269 : vec3<f32> = vec3<f32>(x_268.x, x_268.y, x_268.z);
  let x_270 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_269.x, x_269.y, x_269.z, x_270.w);
  let x_273 : vec4<f32> = u_xlat4;
  let x_278 : vec4<f32> = x_18.x_Color2;
  let x_280 : vec3<f32> = (-(vec3<f32>(x_273.x, x_273.y, x_273.z)) + vec3<f32>(x_278.x, x_278.y, x_278.z));
  let x_281 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_280.x, x_280.y, x_280.z, x_281.w);
  let x_283 : vec4<f32> = u_xlat3;
  let x_285 : vec4<f32> = u_xlat6;
  let x_288 : vec4<f32> = u_xlat4;
  let x_290 : vec3<f32> = ((vec3<f32>(x_283.x, x_283.x, x_283.x) * vec3<f32>(x_285.x, x_285.y, x_285.z)) + vec3<f32>(x_288.x, x_288.y, x_288.z));
  let x_291 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_290.x, x_290.y, x_290.z, x_291.w);
  let x_293 : f32 = u_xlat22;
  let x_294 : f32 = u_xlat23;
  u_xlat23 = (x_293 + -(x_294));
  let x_297 : f32 = u_xlat23;
  u_xlat23 = clamp(x_297, 0.0f, 1.0f);
  let x_299 : f32 = u_xlat23;
  u_xlat3.x = ((x_299 * -2.0f) + 3.0f);
  let x_305 : f32 = u_xlat23;
  let x_306 : f32 = u_xlat23;
  u_xlat23 = (x_305 * x_306);
  let x_308 : f32 = u_xlat23;
  let x_310 : f32 = u_xlat3.x;
  u_xlat23 = (x_308 * x_310);
  let x_312 : f32 = u_xlat22;
  let x_313 : f32 = u_xlat23;
  u_xlat22 = (x_312 * x_313);
  let x_317 : vec4<f32> = x_18.x_Color1;
  let x_320 : vec4<f32> = x_18.x_Color2;
  let x_323 : vec3<f32> = (vec3<f32>(x_317.x, x_317.y, x_317.z) + -(vec3<f32>(x_320.x, x_320.y, x_320.z)));
  let x_324 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_323.x, x_323.y, x_323.z, x_324.w);
  let x_326 : f32 = u_xlat22;
  let x_328 : vec4<f32> = u_xlat6;
  let x_332 : vec4<f32> = x_18.x_Color2;
  let x_334 : vec3<f32> = ((vec3<f32>(x_326, x_326, x_326) * vec3<f32>(x_328.x, x_328.y, x_328.z)) + vec3<f32>(x_332.x, x_332.y, x_332.z));
  let x_335 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_334.x, x_334.y, x_334.z, x_335.w);
  let x_337 : vec4<f32> = u_xlat4;
  let x_339 : vec4<f32> = u_xlat6;
  let x_341 : vec3<f32> = (vec3<f32>(x_337.x, x_337.y, x_337.z) + vec3<f32>(x_339.x, x_339.y, x_339.z));
  let x_342 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_341.x, x_341.y, x_341.z, x_342.w);
  let x_345 : f32 = u_xlat10.x;
  u_xlat22 = (-(x_345) + 1.0f);
  let x_351 : f32 = u_xlat3.z;
  SV_Target0.w = (-(x_351) + 1.0f);
  let x_356 : vec3<f32> = vs_TEXCOORD4;
  let x_360 : vec4<f32> = x_18.unity_WorldToLight[1i];
  u_xlat3 = (vec4<f32>(x_356.y, x_356.y, x_356.y, x_356.y) * x_360);
  let x_363 : vec4<f32> = x_18.unity_WorldToLight[0i];
  let x_364 : vec3<f32> = vs_TEXCOORD4;
  let x_367 : vec4<f32> = u_xlat3;
  u_xlat3 = ((x_363 * vec4<f32>(x_364.x, x_364.x, x_364.x, x_364.x)) + x_367);
  let x_371 : vec4<f32> = x_18.unity_WorldToLight[2i];
  let x_372 : vec3<f32> = vs_TEXCOORD4;
  let x_375 : vec4<f32> = u_xlat3;
  u_xlat3 = ((x_371 * vec4<f32>(x_372.z, x_372.z, x_372.z, x_372.z)) + x_375);
  let x_377 : vec4<f32> = u_xlat3;
  let x_379 : vec4<f32> = x_18.unity_WorldToLight[3i];
  u_xlat3 = (x_377 + x_379);
  let x_386 : f32 = x_18.unity_ProbeVolumeParams.x;
  u_xlatb23 = (x_386 == 1.0f);
  let x_388 : bool = u_xlatb23;
  if (x_388) {
    let x_392 : f32 = x_18.unity_ProbeVolumeParams.y;
    u_xlatb23 = (x_392 == 1.0f);
    let x_394 : vec3<f32> = vs_TEXCOORD4;
    let x_398 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[1i];
    let x_400 : vec3<f32> = (vec3<f32>(x_394.y, x_394.y, x_394.y) * vec3<f32>(x_398.x, x_398.y, x_398.z));
    let x_401 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_400.x, x_400.y, x_400.z, x_401.w);
    let x_404 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[0i];
    let x_406 : vec3<f32> = vs_TEXCOORD4;
    let x_409 : vec4<f32> = u_xlat6;
    let x_411 : vec3<f32> = ((vec3<f32>(x_404.x, x_404.y, x_404.z) * vec3<f32>(x_406.x, x_406.x, x_406.x)) + vec3<f32>(x_409.x, x_409.y, x_409.z));
    let x_412 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_411.x, x_411.y, x_411.z, x_412.w);
    let x_415 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[2i];
    let x_417 : vec3<f32> = vs_TEXCOORD4;
    let x_420 : vec4<f32> = u_xlat6;
    let x_422 : vec3<f32> = ((vec3<f32>(x_415.x, x_415.y, x_415.z) * vec3<f32>(x_417.z, x_417.z, x_417.z)) + vec3<f32>(x_420.x, x_420.y, x_420.z));
    let x_423 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_422.x, x_422.y, x_422.z, x_423.w);
    let x_425 : vec4<f32> = u_xlat6;
    let x_428 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[3i];
    let x_430 : vec3<f32> = (vec3<f32>(x_425.x, x_425.y, x_425.z) + vec3<f32>(x_428.x, x_428.y, x_428.z));
    let x_431 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_430.x, x_430.y, x_430.z, x_431.w);
    let x_433 : bool = u_xlatb23;
    if (x_433) {
      let x_437 : vec4<f32> = u_xlat6;
      x_434 = vec3<f32>(x_437.x, x_437.y, x_437.z);
    } else {
      let x_440 : vec3<f32> = vs_TEXCOORD4;
      x_434 = x_440;
    }
    let x_441 : vec3<f32> = x_434;
    let x_442 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_441.x, x_441.y, x_441.z, x_442.w);
    let x_444 : vec4<f32> = u_xlat6;
    let x_448 : vec3<f32> = x_18.unity_ProbeVolumeMin;
    let x_450 : vec3<f32> = (vec3<f32>(x_444.x, x_444.y, x_444.z) + -(x_448));
    let x_451 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_450.x, x_450.y, x_450.z, x_451.w);
    let x_453 : vec4<f32> = u_xlat6;
    let x_457 : vec3<f32> = x_18.unity_ProbeVolumeSizeInv;
    let x_458 : vec3<f32> = (vec3<f32>(x_453.x, x_453.y, x_453.z) * x_457);
    let x_459 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_459.x, x_458.x, x_458.y, x_458.z);
    let x_462 : f32 = u_xlat6.y;
    u_xlat23 = ((x_462 * 0.25f) + 0.75f);
    let x_469 : f32 = x_18.unity_ProbeVolumeParams.z;
    u_xlat25 = ((x_469 * 0.5f) + 0.75f);
    let x_472 : f32 = u_xlat23;
    let x_473 : f32 = u_xlat25;
    u_xlat6.x = max(x_472, x_473);
    let x_484 : vec4<f32> = u_xlat6;
    let x_486 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_484.x, x_484.z, x_484.w));
    u_xlat6 = x_486;
  } else {
    u_xlat6.x = 1.0f;
    u_xlat6.y = 1.0f;
    u_xlat6.z = 1.0f;
    u_xlat6.w = 1.0f;
  }
  let x_492 : vec4<f32> = u_xlat6;
  let x_495 : vec4<f32> = x_18.unity_OcclusionMaskSelector;
  u_xlat23 = dot(x_492, x_495);
  let x_497 : f32 = u_xlat23;
  u_xlat23 = clamp(x_497, 0.0f, 1.0f);
  let x_501 : f32 = u_xlat3.z;
  u_xlatb25 = (0.0f < x_501);
  let x_503 : bool = u_xlatb25;
  u_xlat25 = select(0.0f, 1.0f, x_503);
  let x_505 : vec4<f32> = u_xlat3;
  let x_507 : vec4<f32> = u_xlat3;
  let x_509 : vec2<f32> = (vec2<f32>(x_505.x, x_505.y) / vec2<f32>(x_507.w, x_507.w));
  let x_510 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_509.x, x_509.y, x_510.z, x_510.w);
  let x_512 : vec4<f32> = u_xlat6;
  let x_514 : vec2<f32> = (vec2<f32>(x_512.x, x_512.y) + vec2<f32>(0.5f, 0.5f));
  let x_515 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_514.x, x_514.y, x_515.z, x_515.w);
  let x_523 : vec4<f32> = u_xlat6;
  let x_525 : vec4<f32> = textureSample(x_LightTexture0, sampler_LightTexture0, vec2<f32>(x_523.x, x_523.y));
  u_xlat24 = x_525.w;
  let x_527 : f32 = u_xlat24;
  let x_528 : f32 = u_xlat25;
  u_xlat24 = (x_527 * x_528);
  let x_530 : vec4<f32> = u_xlat3;
  let x_532 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(vec3<f32>(x_530.x, x_530.y, x_530.z), vec3<f32>(x_532.x, x_532.y, x_532.z));
  let x_541 : vec4<f32> = u_xlat3;
  let x_543 : vec4<f32> = textureSample(x_LightTextureB0, sampler_LightTextureB0, vec2<f32>(x_541.x, x_541.x));
  u_xlat3.x = x_543.x;
  let x_547 : f32 = u_xlat3.x;
  let x_548 : f32 = u_xlat24;
  u_xlat3.x = (x_547 * x_548);
  let x_551 : f32 = u_xlat23;
  let x_553 : f32 = u_xlat3.x;
  u_xlat23 = (x_551 * x_553);
  let x_556 : vec3<f32> = vs_TEXCOORD1;
  let x_557 : vec3<f32> = u_xlat5;
  u_xlat3.x = dot(x_556, x_557);
  let x_561 : vec3<f32> = vs_TEXCOORD2;
  let x_562 : vec3<f32> = u_xlat5;
  u_xlat3.y = dot(x_561, x_562);
  let x_566 : vec3<f32> = vs_TEXCOORD3;
  let x_567 : vec3<f32> = u_xlat5;
  u_xlat3.z = dot(x_566, x_567);
  let x_570 : vec4<f32> = u_xlat3;
  let x_572 : vec4<f32> = u_xlat3;
  u_xlat24 = dot(vec3<f32>(x_570.x, x_570.y, x_570.z), vec3<f32>(x_572.x, x_572.y, x_572.z));
  let x_575 : f32 = u_xlat24;
  u_xlat24 = inverseSqrt(x_575);
  let x_577 : f32 = u_xlat24;
  let x_579 : vec4<f32> = u_xlat3;
  let x_581 : vec3<f32> = (vec3<f32>(x_577, x_577, x_577) * vec3<f32>(x_579.x, x_579.y, x_579.z));
  let x_582 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_581.x, x_581.y, x_581.z, x_582.w);
  let x_584 : f32 = u_xlat23;
  let x_588 : vec4<f32> = x_18.x_LightColor0;
  u_xlat5 = (vec3<f32>(x_584, x_584, x_584) * vec3<f32>(x_588.x, x_588.y, x_588.z));
  let x_591 : vec4<f32> = u_xlat4;
  let x_595 : vec3<f32> = (vec3<f32>(x_591.x, x_591.y, x_591.z) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_596 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_595.x, x_595.y, x_595.z, x_596.w);
  let x_600 : f32 = x_18.x_Metallic;
  let x_602 : f32 = x_18.x_Metallic;
  let x_604 : f32 = x_18.x_Metallic;
  let x_605 : vec3<f32> = vec3<f32>(x_600, x_602, x_604);
  let x_610 : vec4<f32> = u_xlat6;
  let x_615 : vec3<f32> = ((vec3<f32>(x_605.x, x_605.y, x_605.z) * vec3<f32>(x_610.x, x_610.y, x_610.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_616 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_615.x, x_615.y, x_615.z, x_616.w);
  let x_619 : f32 = x_18.x_Metallic;
  u_xlat23 = ((-(x_619) * 0.959999979f) + 0.959999979f);
  let x_624 : f32 = u_xlat23;
  let x_626 : vec4<f32> = u_xlat4;
  let x_628 : vec3<f32> = (vec3<f32>(x_624, x_624, x_624) * vec3<f32>(x_626.x, x_626.y, x_626.z));
  let x_629 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_628.x, x_628.y, x_628.z, x_629.w);
  let x_631 : f32 = u_xlat22;
  let x_635 : f32 = x_18.x_Glossiness;
  u_xlat22 = ((-(x_631) * x_635) + 1.0f);
  let x_638 : vec3<f32> = u_xlat0;
  let x_639 : f32 = u_xlat21;
  let x_642 : vec3<f32> = u_xlat2;
  u_xlat0 = ((x_638 * vec3<f32>(x_639, x_639, x_639)) + x_642);
  let x_644 : vec3<f32> = u_xlat0;
  let x_645 : vec3<f32> = u_xlat0;
  u_xlat21 = dot(x_644, x_645);
  let x_647 : f32 = u_xlat21;
  u_xlat21 = max(x_647, 0.001f);
  let x_650 : f32 = u_xlat21;
  u_xlat21 = inverseSqrt(x_650);
  let x_652 : f32 = u_xlat21;
  let x_654 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_652, x_652, x_652) * x_654);
  let x_656 : vec4<f32> = u_xlat3;
  let x_658 : vec3<f32> = u_xlat2;
  u_xlat21 = dot(vec3<f32>(x_656.x, x_656.y, x_656.z), x_658);
  let x_660 : vec4<f32> = u_xlat3;
  let x_662 : vec3<f32> = u_xlat1;
  u_xlat2.x = dot(vec3<f32>(x_660.x, x_660.y, x_660.z), x_662);
  let x_666 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_666, 0.0f, 1.0f);
  let x_670 : vec4<f32> = u_xlat3;
  let x_672 : vec3<f32> = u_xlat0;
  u_xlat9 = dot(vec3<f32>(x_670.x, x_670.y, x_670.z), x_672);
  let x_674 : f32 = u_xlat9;
  u_xlat9 = clamp(x_674, 0.0f, 1.0f);
  let x_676 : vec3<f32> = u_xlat1;
  let x_677 : vec3<f32> = u_xlat0;
  u_xlat0.x = dot(x_676, x_677);
  let x_681 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_681, 0.0f, 1.0f);
  let x_686 : f32 = u_xlat0.x;
  let x_688 : f32 = u_xlat0.x;
  u_xlat7.x = (x_686 * x_688);
  let x_691 : vec3<f32> = u_xlat7;
  let x_693 : f32 = u_xlat22;
  u_xlat7.x = dot(vec2<f32>(x_691.x, x_691.x), vec2<f32>(x_693, x_693));
  let x_698 : f32 = u_xlat7.x;
  u_xlat7.x = (x_698 + -0.5f);
  let x_704 : f32 = u_xlat2.x;
  u_xlat14 = (-(x_704) + 1.0f);
  let x_707 : f32 = u_xlat14;
  let x_708 : f32 = u_xlat14;
  u_xlat1.x = (x_707 * x_708);
  let x_712 : f32 = u_xlat1.x;
  let x_714 : f32 = u_xlat1.x;
  u_xlat1.x = (x_712 * x_714);
  let x_717 : f32 = u_xlat14;
  let x_719 : f32 = u_xlat1.x;
  u_xlat14 = (x_717 * x_719);
  let x_722 : f32 = u_xlat7.x;
  let x_723 : f32 = u_xlat14;
  u_xlat14 = ((x_722 * x_723) + 1.0f);
  let x_726 : f32 = u_xlat21;
  u_xlat1.x = (-(abs(x_726)) + 1.0f);
  let x_733 : f32 = u_xlat1.x;
  let x_735 : f32 = u_xlat1.x;
  u_xlat8 = (x_733 * x_735);
  let x_737 : f32 = u_xlat8;
  let x_738 : f32 = u_xlat8;
  u_xlat8 = (x_737 * x_738);
  let x_741 : f32 = u_xlat1.x;
  let x_742 : f32 = u_xlat8;
  u_xlat1.x = (x_741 * x_742);
  let x_746 : f32 = u_xlat7.x;
  let x_748 : f32 = u_xlat1.x;
  u_xlat7.x = ((x_746 * x_748) + 1.0f);
  let x_753 : f32 = u_xlat7.x;
  let x_754 : f32 = u_xlat14;
  u_xlat7.x = (x_753 * x_754);
  let x_757 : f32 = u_xlat22;
  let x_758 : f32 = u_xlat22;
  u_xlat14 = (x_757 * x_758);
  let x_760 : f32 = u_xlat14;
  u_xlat14 = max(x_760, 0.002f);
  let x_763 : f32 = u_xlat14;
  u_xlat1.x = (-(x_763) + 1.0f);
  let x_767 : f32 = u_xlat21;
  let x_770 : f32 = u_xlat1.x;
  let x_772 : f32 = u_xlat14;
  u_xlat8 = ((abs(x_767) * x_770) + x_772);
  let x_775 : f32 = u_xlat2.x;
  let x_777 : f32 = u_xlat1.x;
  let x_779 : f32 = u_xlat14;
  u_xlat1.x = ((x_775 * x_777) + x_779);
  let x_782 : f32 = u_xlat21;
  let x_785 : f32 = u_xlat1.x;
  u_xlat21 = (abs(x_782) * x_785);
  let x_788 : f32 = u_xlat2.x;
  let x_789 : f32 = u_xlat8;
  let x_791 : f32 = u_xlat21;
  u_xlat21 = ((x_788 * x_789) + x_791);
  let x_793 : f32 = u_xlat21;
  u_xlat21 = (x_793 + 0.00001f);
  let x_796 : f32 = u_xlat21;
  u_xlat21 = (0.5f / x_796);
  let x_798 : f32 = u_xlat14;
  let x_799 : f32 = u_xlat14;
  u_xlat14 = (x_798 * x_799);
  let x_801 : f32 = u_xlat9;
  let x_802 : f32 = u_xlat14;
  let x_804 : f32 = u_xlat9;
  u_xlat1.x = ((x_801 * x_802) + -(x_804));
  let x_809 : f32 = u_xlat1.x;
  let x_810 : f32 = u_xlat9;
  u_xlat1.x = ((x_809 * x_810) + 1.0f);
  let x_814 : f32 = u_xlat14;
  u_xlat14 = (x_814 * 0.318309873f);
  let x_818 : f32 = u_xlat1.x;
  let x_820 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_818 * x_820) + 0.0000001f);
  let x_825 : f32 = u_xlat14;
  let x_827 : f32 = u_xlat1.x;
  u_xlat14 = (x_825 / x_827);
  let x_829 : f32 = u_xlat14;
  let x_830 : f32 = u_xlat21;
  u_xlat7.y = (x_829 * x_830);
  let x_833 : vec3<f32> = u_xlat2;
  let x_835 : vec3<f32> = u_xlat7;
  let x_837 : vec2<f32> = (vec2<f32>(x_833.x, x_833.x) * vec2<f32>(x_835.x, x_835.y));
  let x_838 : vec3<f32> = u_xlat7;
  u_xlat7 = vec3<f32>(x_837.x, x_837.y, x_838.z);
  let x_841 : f32 = u_xlat7.y;
  u_xlat14 = (x_841 * 3.141592741f);
  let x_844 : f32 = u_xlat14;
  u_xlat14 = max(x_844, 0.0f);
  let x_846 : vec4<f32> = u_xlat6;
  let x_848 : vec4<f32> = u_xlat6;
  u_xlat21 = dot(vec3<f32>(x_846.x, x_846.y, x_846.z), vec3<f32>(x_848.x, x_848.y, x_848.z));
  let x_852 : f32 = u_xlat21;
  u_xlatb21 = !((x_852 == 0.0f));
  let x_854 : bool = u_xlatb21;
  u_xlat21 = select(0.0f, 1.0f, x_854);
  let x_856 : f32 = u_xlat21;
  let x_857 : f32 = u_xlat14;
  u_xlat14 = (x_856 * x_857);
  let x_859 : vec3<f32> = u_xlat7;
  let x_861 : vec3<f32> = u_xlat5;
  u_xlat1 = (vec3<f32>(x_859.x, x_859.x, x_859.x) * x_861);
  let x_863 : vec3<f32> = u_xlat5;
  let x_864 : f32 = u_xlat14;
  u_xlat7 = (x_863 * vec3<f32>(x_864, x_864, x_864));
  let x_868 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_868) + 1.0f);
  let x_873 : f32 = u_xlat0.x;
  let x_875 : f32 = u_xlat0.x;
  u_xlat22 = (x_873 * x_875);
  let x_877 : f32 = u_xlat22;
  let x_878 : f32 = u_xlat22;
  u_xlat22 = (x_877 * x_878);
  let x_881 : f32 = u_xlat0.x;
  let x_882 : f32 = u_xlat22;
  u_xlat0.x = (x_881 * x_882);
  let x_885 : vec4<f32> = u_xlat6;
  u_xlat2 = (-(vec3<f32>(x_885.x, x_885.y, x_885.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_890 : vec3<f32> = u_xlat2;
  let x_891 : vec3<f32> = u_xlat0;
  let x_894 : vec4<f32> = u_xlat6;
  u_xlat2 = ((x_890 * vec3<f32>(x_891.x, x_891.x, x_891.x)) + vec3<f32>(x_894.x, x_894.y, x_894.z));
  let x_897 : vec3<f32> = u_xlat7;
  let x_898 : vec3<f32> = u_xlat2;
  u_xlat0 = (x_897 * x_898);
  let x_900 : vec4<f32> = u_xlat4;
  let x_902 : vec3<f32> = u_xlat1;
  let x_904 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_900.x, x_900.y, x_900.z) * x_902) + x_904);
  let x_907 : f32 = vs_TEXCOORD9;
  let x_909 : f32 = x_18.x_ProjectionParams.y;
  u_xlat21 = (x_907 / x_909);
  let x_911 : f32 = u_xlat21;
  u_xlat21 = (-(x_911) + 1.0f);
  let x_914 : f32 = u_xlat21;
  let x_916 : f32 = x_18.x_ProjectionParams.z;
  u_xlat21 = (x_914 * x_916);
  let x_918 : f32 = u_xlat21;
  u_xlat21 = max(x_918, 0.0f);
  let x_920 : f32 = u_xlat21;
  let x_923 : f32 = x_18.unity_FogParams.x;
  u_xlat21 = (x_920 * x_923);
  let x_925 : f32 = u_xlat21;
  let x_926 : f32 = u_xlat21;
  u_xlat21 = (x_925 * -(x_926));
  let x_929 : f32 = u_xlat21;
  u_xlat21 = exp2(x_929);
  let x_931 : vec3<f32> = u_xlat0;
  let x_932 : f32 = u_xlat21;
  let x_934 : vec3<f32> = (x_931 * vec3<f32>(x_932, x_932, x_932));
  let x_935 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_934.x, x_934.y, x_934.z, x_935.w);
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

