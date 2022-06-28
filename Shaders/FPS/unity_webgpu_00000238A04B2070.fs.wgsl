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
  x_ShadowMapTexture_TexelSize : vec4<f32>,
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

var<private> u_xlat36 : f32;

var<private> u_xlat1 : vec3<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat37 : f32;

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

var<private> u_xlat14 : vec3<f32>;

var<private> u_xlat39 : f32;

@group(0) @binding(4) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(6) var samplerunity_ProbeVolumeSH : sampler;

var<private> u_xlatb14 : bool;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlat9 : vec4<f32>;

var<private> u_xlat31 : vec2<f32>;

var<private> u_xlat10 : vec4<f32>;

var<private> u_xlat11 : vec4<f32>;

@group(0) @binding(5) var x_ShadowMapTexture : texture_depth_2d;

@group(0) @binding(7) var sampler_ShadowMapTexture : sampler_comparison;

var<private> u_xlat26 : f32;

@group(0) @binding(2) var x_LightTexture0 : texture_2d<f32>;

@group(0) @binding(8) var sampler_LightTexture0 : sampler;

@group(0) @binding(3) var x_LightTextureB0 : texture_2d<f32>;

@group(0) @binding(9) var sampler_LightTextureB0 : sampler;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> u_xlat38 : f32;

var<private> u_xlat12 : vec3<f32>;

var<private> u_xlat24 : f32;

var<private> u_xlat13 : f32;

var<private> u_xlatb36 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_232 : vec3<f32>;
  var txVec0 : vec3<f32>;
  var txVec1 : vec3<f32>;
  var txVec2 : vec3<f32>;
  var txVec3 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_12 : vec3<f32> = vs_TEXCOORD2;
  let x_26 : vec4<f32> = x_21.x_WorldSpaceLightPos0;
  u_xlat0 = (-(x_12) + vec3<f32>(x_26.x, x_26.y, x_26.z));
  let x_31 : vec3<f32> = u_xlat0;
  let x_32 : vec3<f32> = u_xlat0;
  u_xlat36 = dot(x_31, x_32);
  let x_34 : f32 = u_xlat36;
  u_xlat36 = inverseSqrt(x_34);
  let x_37 : f32 = u_xlat36;
  let x_39 : vec3<f32> = u_xlat0;
  u_xlat1 = (vec3<f32>(x_37, x_37, x_37) * x_39);
  let x_43 : vec3<f32> = vs_TEXCOORD2;
  let x_48 : vec3<f32> = x_21.x_WorldSpaceCameraPos;
  let x_49 : vec3<f32> = (-(x_43) + x_48);
  let x_50 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_49.x, x_49.y, x_49.z, x_50.w);
  let x_53 : vec4<f32> = u_xlat2;
  let x_55 : vec4<f32> = u_xlat2;
  u_xlat37 = dot(vec3<f32>(x_53.x, x_53.y, x_53.z), vec3<f32>(x_55.x, x_55.y, x_55.z));
  let x_58 : f32 = u_xlat37;
  u_xlat37 = inverseSqrt(x_58);
  let x_61 : f32 = u_xlat37;
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
  u_xlat37 = dot(vec3<f32>(x_138.x, x_138.y, x_138.z), vec3<f32>(x_140.x, x_140.y, x_140.z));
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
  let x_162 : f32 = u_xlat37;
  let x_165 : f32 = u_xlat2.x;
  u_xlat2.x = (-(x_162) + x_165);
  let x_170 : f32 = x_21.unity_ShadowFadeCenterAndType.w;
  let x_172 : f32 = u_xlat2.x;
  let x_174 : f32 = u_xlat37;
  u_xlat37 = ((x_170 * x_172) + x_174);
  let x_176 : f32 = u_xlat37;
  let x_179 : f32 = x_21.x_LightShadowData.z;
  let x_182 : f32 = x_21.x_LightShadowData.w;
  u_xlat37 = ((x_176 * x_179) + x_182);
  let x_184 : f32 = u_xlat37;
  u_xlat37 = clamp(x_184, 0.0f, 1.0f);
  let x_193 : f32 = x_21.unity_ProbeVolumeParams.x;
  u_xlatb2 = (x_193 == 1.0f);
  let x_195 : bool = u_xlatb2;
  if (x_195) {
    let x_199 : f32 = x_21.unity_ProbeVolumeParams.y;
    u_xlatb2 = (x_199 == 1.0f);
    let x_202 : vec3<f32> = vs_TEXCOORD2;
    let x_206 : vec4<f32> = x_21.unity_ProbeVolumeWorldToObject[1i];
    u_xlat14 = (vec3<f32>(x_202.y, x_202.y, x_202.y) * vec3<f32>(x_206.x, x_206.y, x_206.z));
    let x_210 : vec4<f32> = x_21.unity_ProbeVolumeWorldToObject[0i];
    let x_212 : vec3<f32> = vs_TEXCOORD2;
    let x_215 : vec3<f32> = u_xlat14;
    u_xlat14 = ((vec3<f32>(x_210.x, x_210.y, x_210.z) * vec3<f32>(x_212.x, x_212.x, x_212.x)) + x_215);
    let x_218 : vec4<f32> = x_21.unity_ProbeVolumeWorldToObject[2i];
    let x_220 : vec3<f32> = vs_TEXCOORD2;
    let x_223 : vec3<f32> = u_xlat14;
    u_xlat14 = ((vec3<f32>(x_218.x, x_218.y, x_218.z) * vec3<f32>(x_220.z, x_220.z, x_220.z)) + x_223);
    let x_225 : vec3<f32> = u_xlat14;
    let x_227 : vec4<f32> = x_21.unity_ProbeVolumeWorldToObject[3i];
    u_xlat14 = (x_225 + vec3<f32>(x_227.x, x_227.y, x_227.z));
    let x_230 : bool = u_xlatb2;
    if (x_230) {
      let x_235 : vec3<f32> = u_xlat14;
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
    u_xlat14.x = ((x_259 * 0.25f) + 0.75f);
    let x_267 : f32 = x_21.unity_ProbeVolumeParams.z;
    u_xlat39 = ((x_267 * 0.5f) + 0.75f);
    let x_272 : f32 = u_xlat14.x;
    let x_273 : f32 = u_xlat39;
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
  let x_302 : f32 = u_xlat37;
  u_xlatb14 = (x_302 < 0.99000001f);
  let x_305 : bool = u_xlatb14;
  if (x_305) {
    let x_308 : vec3<f32> = vs_TEXCOORD2;
    let x_311 : vec4<f32> = x_21.unity_WorldToShadow[0i][1i];
    u_xlat7 = (vec4<f32>(x_308.y, x_308.y, x_308.y, x_308.y) * x_311);
    let x_314 : vec4<f32> = x_21.unity_WorldToShadow[0i][0i];
    let x_315 : vec3<f32> = vs_TEXCOORD2;
    let x_318 : vec4<f32> = u_xlat7;
    u_xlat7 = ((x_314 * vec4<f32>(x_315.x, x_315.x, x_315.x, x_315.x)) + x_318);
    let x_321 : vec4<f32> = x_21.unity_WorldToShadow[0i][2i];
    let x_322 : vec3<f32> = vs_TEXCOORD2;
    let x_325 : vec4<f32> = u_xlat7;
    u_xlat7 = ((x_321 * vec4<f32>(x_322.z, x_322.z, x_322.z, x_322.z)) + x_325);
    let x_327 : vec4<f32> = u_xlat7;
    let x_329 : vec4<f32> = x_21.unity_WorldToShadow[0i][3i];
    u_xlat7 = (x_327 + x_329);
    let x_331 : vec4<f32> = u_xlat7;
    let x_333 : vec4<f32> = u_xlat7;
    u_xlat14 = (vec3<f32>(x_331.x, x_331.y, x_331.z) / vec3<f32>(x_333.w, x_333.w, x_333.w));
    let x_336 : vec3<f32> = u_xlat14;
    let x_340 : vec4<f32> = x_21.x_ShadowMapTexture_TexelSize;
    let x_344 : vec2<f32> = ((vec2<f32>(x_336.x, x_336.y) * vec2<f32>(x_340.z, x_340.w)) + vec2<f32>(0.5f, 0.5f));
    let x_345 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_344.x, x_344.y, x_345.z, x_345.w);
    let x_347 : vec4<f32> = u_xlat7;
    let x_349 : vec2<f32> = floor(vec2<f32>(x_347.x, x_347.y));
    let x_350 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_349.x, x_349.y, x_350.z, x_350.w);
    let x_352 : vec3<f32> = u_xlat14;
    let x_355 : vec4<f32> = x_21.x_ShadowMapTexture_TexelSize;
    let x_358 : vec4<f32> = u_xlat7;
    let x_361 : vec2<f32> = ((vec2<f32>(x_352.x, x_352.y) * vec2<f32>(x_355.z, x_355.w)) + -(vec2<f32>(x_358.x, x_358.y)));
    let x_362 : vec3<f32> = u_xlat14;
    u_xlat14 = vec3<f32>(x_361.x, x_361.y, x_362.z);
    let x_365 : vec3<f32> = u_xlat14;
    u_xlat8 = (vec4<f32>(x_365.x, x_365.x, x_365.y, x_365.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
    let x_370 : vec4<f32> = u_xlat8;
    let x_372 : vec4<f32> = u_xlat8;
    let x_374 : vec2<f32> = (vec2<f32>(x_370.x, x_370.z) * vec2<f32>(x_372.x, x_372.z));
    let x_375 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_374.x, x_375.y, x_375.z, x_374.y);
    let x_379 : vec4<f32> = u_xlat9;
    let x_382 : vec3<f32> = u_xlat14;
    u_xlat31 = ((vec2<f32>(x_379.x, x_379.w) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_382.x, x_382.y)));
    let x_386 : vec3<f32> = u_xlat14;
    let x_390 : vec2<f32> = (-(vec2<f32>(x_386.x, x_386.y)) + vec2<f32>(1.0f, 1.0f));
    let x_391 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_390.x, x_391.y, x_390.y, x_391.w);
    let x_394 : vec3<f32> = u_xlat14;
    let x_397 : vec2<f32> = min(vec2<f32>(x_394.x, x_394.y), vec2<f32>(0.0f, 0.0f));
    let x_398 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_397.x, x_397.y, x_398.z, x_398.w);
    let x_400 : vec4<f32> = u_xlat10;
    let x_403 : vec4<f32> = u_xlat10;
    let x_406 : vec4<f32> = u_xlat8;
    let x_408 : vec2<f32> = ((-(vec2<f32>(x_400.x, x_400.y)) * vec2<f32>(x_403.x, x_403.y)) + vec2<f32>(x_406.x, x_406.z));
    let x_409 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_408.x, x_409.y, x_408.y, x_409.w);
    let x_411 : vec3<f32> = u_xlat14;
    let x_413 : vec2<f32> = max(vec2<f32>(x_411.x, x_411.y), vec2<f32>(0.0f, 0.0f));
    let x_414 : vec3<f32> = u_xlat14;
    u_xlat14 = vec3<f32>(x_413.x, x_413.y, x_414.z);
    let x_416 : vec3<f32> = u_xlat14;
    let x_419 : vec3<f32> = u_xlat14;
    let x_422 : vec4<f32> = u_xlat8;
    let x_424 : vec2<f32> = ((-(vec2<f32>(x_416.x, x_416.y)) * vec2<f32>(x_419.x, x_419.y)) + vec2<f32>(x_422.y, x_422.w));
    let x_425 : vec3<f32> = u_xlat14;
    u_xlat14 = vec3<f32>(x_424.x, x_424.y, x_425.z);
    let x_428 : f32 = u_xlat31.x;
    u_xlat10.x = x_428;
    let x_431 : f32 = u_xlat8.x;
    u_xlat10.y = x_431;
    let x_434 : f32 = u_xlat14.x;
    u_xlat10.z = x_434;
    let x_437 : f32 = u_xlat9.x;
    u_xlat10.w = x_437;
    let x_439 : vec4<f32> = u_xlat10;
    u_xlat10 = (x_439 * vec4<f32>(0.444440007f, 0.444440007f, 0.444440007f, 0.222220004f));
    let x_445 : f32 = u_xlat31.y;
    u_xlat9.x = x_445;
    let x_448 : f32 = u_xlat8.z;
    u_xlat9.y = x_448;
    let x_451 : f32 = u_xlat14.y;
    u_xlat9.z = x_451;
    let x_453 : vec4<f32> = u_xlat9;
    u_xlat8 = (x_453 * vec4<f32>(0.444440007f, 0.444440007f, 0.444440007f, 0.222220004f));
    let x_455 : vec4<f32> = u_xlat10;
    let x_457 : vec4<f32> = u_xlat10;
    u_xlat9 = (vec4<f32>(x_455.y, x_455.w, x_455.y, x_455.w) + vec4<f32>(x_457.x, x_457.z, x_457.x, x_457.z));
    let x_461 : vec4<f32> = u_xlat8;
    let x_463 : vec4<f32> = u_xlat8;
    u_xlat11 = (vec4<f32>(x_461.y, x_461.y, x_461.w, x_461.w) + vec4<f32>(x_463.x, x_463.x, x_463.z, x_463.z));
    let x_466 : vec4<f32> = u_xlat10;
    let x_468 : vec4<f32> = u_xlat9;
    let x_470 : vec2<f32> = (vec2<f32>(x_466.y, x_466.w) / vec2<f32>(x_468.z, x_468.w));
    let x_471 : vec3<f32> = u_xlat14;
    u_xlat14 = vec3<f32>(x_470.x, x_470.y, x_471.z);
    let x_473 : vec3<f32> = u_xlat14;
    let x_477 : vec2<f32> = (vec2<f32>(x_473.x, x_473.y) + vec2<f32>(-1.5f, 0.5f));
    let x_478 : vec3<f32> = u_xlat14;
    u_xlat14 = vec3<f32>(x_477.x, x_477.y, x_478.z);
    let x_480 : vec4<f32> = u_xlat8;
    let x_482 : vec4<f32> = u_xlat11;
    u_xlat31 = (vec2<f32>(x_480.y, x_480.w) / vec2<f32>(x_482.y, x_482.w));
    let x_485 : vec2<f32> = u_xlat31;
    u_xlat31 = (x_485 + vec2<f32>(-1.5f, 0.5f));
    let x_487 : vec3<f32> = u_xlat14;
    let x_490 : vec4<f32> = x_21.x_ShadowMapTexture_TexelSize;
    let x_492 : vec2<f32> = (vec2<f32>(x_487.x, x_487.y) * vec2<f32>(x_490.x, x_490.x));
    let x_493 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_492.x, x_492.y, x_493.z, x_493.w);
    let x_495 : vec2<f32> = u_xlat31;
    let x_497 : vec4<f32> = x_21.x_ShadowMapTexture_TexelSize;
    let x_499 : vec2<f32> = (x_495 * vec2<f32>(x_497.y, x_497.y));
    let x_500 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_500.x, x_500.y, x_499.x, x_499.y);
    let x_502 : vec4<f32> = u_xlat9;
    let x_503 : vec4<f32> = u_xlat11;
    u_xlat9 = (x_502 * x_503);
    let x_505 : vec4<f32> = u_xlat7;
    let x_508 : vec4<f32> = x_21.x_ShadowMapTexture_TexelSize;
    let x_511 : vec4<f32> = u_xlat8;
    u_xlat10 = ((vec4<f32>(x_505.x, x_505.y, x_505.x, x_505.y) * vec4<f32>(x_508.x, x_508.y, x_508.x, x_508.y)) + vec4<f32>(x_511.x, x_511.z, x_511.y, x_511.z));
    let x_515 : vec4<f32> = u_xlat10;
    let x_516 : vec2<f32> = vec2<f32>(x_515.x, x_515.y);
    let x_518 : f32 = u_xlat14.z;
    txVec0 = vec3<f32>(x_516.x, x_516.y, x_518);
    let x_530 : vec3<f32> = txVec0;
    let x_532 : f32 = textureSampleCompareLevel(x_ShadowMapTexture, sampler_ShadowMapTexture, x_530.xy, x_530.z);
    u_xlat14.x = x_532;
    let x_535 : vec4<f32> = u_xlat10;
    let x_536 : vec2<f32> = vec2<f32>(x_535.z, x_535.w);
    let x_538 : f32 = u_xlat14.z;
    txVec1 = vec3<f32>(x_536.x, x_536.y, x_538);
    let x_546 : vec3<f32> = txVec1;
    let x_548 : f32 = textureSampleCompareLevel(x_ShadowMapTexture, sampler_ShadowMapTexture, x_546.xy, x_546.z);
    u_xlat26 = x_548;
    let x_549 : f32 = u_xlat26;
    let x_551 : f32 = u_xlat9.y;
    u_xlat26 = (x_549 * x_551);
    let x_554 : f32 = u_xlat9.x;
    let x_556 : f32 = u_xlat14.x;
    let x_558 : f32 = u_xlat26;
    u_xlat14.x = ((x_554 * x_556) + x_558);
    let x_561 : vec4<f32> = u_xlat7;
    let x_564 : vec4<f32> = x_21.x_ShadowMapTexture_TexelSize;
    let x_567 : vec4<f32> = u_xlat8;
    u_xlat7 = ((vec4<f32>(x_561.x, x_561.y, x_561.x, x_561.y) * vec4<f32>(x_564.x, x_564.y, x_564.x, x_564.y)) + vec4<f32>(x_567.x, x_567.w, x_567.y, x_567.w));
    let x_571 : vec4<f32> = u_xlat7;
    let x_572 : vec2<f32> = vec2<f32>(x_571.x, x_571.y);
    let x_574 : f32 = u_xlat14.z;
    txVec2 = vec3<f32>(x_572.x, x_572.y, x_574);
    let x_581 : vec3<f32> = txVec2;
    let x_583 : f32 = textureSampleCompareLevel(x_ShadowMapTexture, sampler_ShadowMapTexture, x_581.xy, x_581.z);
    u_xlat26 = x_583;
    let x_585 : f32 = u_xlat9.z;
    let x_586 : f32 = u_xlat26;
    let x_589 : f32 = u_xlat14.x;
    u_xlat14.x = ((x_585 * x_586) + x_589);
    let x_593 : vec4<f32> = u_xlat7;
    let x_594 : vec2<f32> = vec2<f32>(x_593.z, x_593.w);
    let x_596 : f32 = u_xlat14.z;
    txVec3 = vec3<f32>(x_594.x, x_594.y, x_596);
    let x_603 : vec3<f32> = txVec3;
    let x_605 : f32 = textureSampleCompareLevel(x_ShadowMapTexture, sampler_ShadowMapTexture, x_603.xy, x_603.z);
    u_xlat26 = x_605;
    let x_607 : f32 = u_xlat9.w;
    let x_608 : f32 = u_xlat26;
    let x_611 : f32 = u_xlat14.x;
    u_xlat14.x = ((x_607 * x_608) + x_611);
    let x_615 : f32 = x_21.x_LightShadowData.x;
    u_xlat26 = (-(x_615) + 1.0f);
    let x_619 : f32 = u_xlat14.x;
    let x_620 : f32 = u_xlat26;
    let x_623 : f32 = x_21.x_LightShadowData.x;
    u_xlat14.x = ((x_619 * x_620) + x_623);
  } else {
    u_xlat14.x = 1.0f;
  }
  let x_629 : f32 = u_xlat14.x;
  let x_632 : f32 = u_xlat2.x;
  u_xlat2.x = (-(x_629) + x_632);
  let x_635 : f32 = u_xlat37;
  let x_637 : f32 = u_xlat2.x;
  let x_640 : f32 = u_xlat14.x;
  u_xlat37 = ((x_635 * x_637) + x_640);
  let x_643 : f32 = u_xlat6.z;
  u_xlatb2 = (0.0f < x_643);
  let x_645 : bool = u_xlatb2;
  u_xlat2.x = select(0.0f, 1.0f, x_645);
  let x_648 : vec4<f32> = u_xlat6;
  let x_650 : vec4<f32> = u_xlat6;
  let x_652 : vec2<f32> = (vec2<f32>(x_648.x, x_648.y) / vec2<f32>(x_650.w, x_650.w));
  let x_653 : vec3<f32> = u_xlat14;
  u_xlat14 = vec3<f32>(x_652.x, x_652.y, x_653.z);
  let x_655 : vec3<f32> = u_xlat14;
  let x_657 : vec2<f32> = (vec2<f32>(x_655.x, x_655.y) + vec2<f32>(0.5f, 0.5f));
  let x_658 : vec3<f32> = u_xlat14;
  u_xlat14 = vec3<f32>(x_657.x, x_657.y, x_658.z);
  let x_665 : vec3<f32> = u_xlat14;
  let x_667 : vec4<f32> = textureSample(x_LightTexture0, sampler_LightTexture0, vec2<f32>(x_665.x, x_665.y));
  u_xlat14.x = x_667.w;
  let x_671 : f32 = u_xlat14.x;
  let x_673 : f32 = u_xlat2.x;
  u_xlat2.x = (x_671 * x_673);
  let x_676 : vec4<f32> = u_xlat6;
  let x_678 : vec4<f32> = u_xlat6;
  u_xlat14.x = dot(vec3<f32>(x_676.x, x_676.y, x_676.z), vec3<f32>(x_678.x, x_678.y, x_678.z));
  let x_687 : vec3<f32> = u_xlat14;
  let x_689 : vec4<f32> = textureSample(x_LightTextureB0, sampler_LightTextureB0, vec2<f32>(x_687.x, x_687.x));
  u_xlat14.x = x_689.x;
  let x_693 : f32 = u_xlat14.x;
  let x_695 : f32 = u_xlat2.x;
  u_xlat2.x = (x_693 * x_695);
  let x_698 : f32 = u_xlat37;
  let x_700 : f32 = u_xlat2.x;
  u_xlat37 = (x_698 * x_700);
  let x_702 : f32 = u_xlat37;
  let x_706 : vec4<f32> = x_21.x_LightColor0;
  let x_708 : vec3<f32> = (vec3<f32>(x_702, x_702, x_702) * vec3<f32>(x_706.x, x_706.y, x_706.z));
  let x_709 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_708.x, x_708.y, x_708.z, x_709.w);
  let x_712 : vec3<f32> = vs_TEXCOORD1;
  let x_713 : vec3<f32> = vs_TEXCOORD1;
  u_xlat37 = dot(x_712, x_713);
  let x_715 : f32 = u_xlat37;
  u_xlat37 = inverseSqrt(x_715);
  let x_717 : f32 = u_xlat37;
  let x_719 : vec3<f32> = vs_TEXCOORD1;
  let x_720 : vec3<f32> = (vec3<f32>(x_717, x_717, x_717) * x_719);
  let x_721 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_720.x, x_720.y, x_720.z, x_721.w);
  let x_723 : vec3<f32> = u_xlat4;
  let x_724 : vec4<f32> = vs_COLOR0;
  u_xlat4 = ((x_723 * vec3<f32>(x_724.x, x_724.y, x_724.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_732 : f32 = x_21.x_Metallic;
  let x_734 : f32 = x_21.x_Metallic;
  let x_736 : f32 = x_21.x_Metallic;
  let x_737 : vec3<f32> = vec3<f32>(x_732, x_734, x_736);
  let x_742 : vec3<f32> = u_xlat4;
  u_xlat4 = ((vec3<f32>(x_737.x, x_737.y, x_737.z) * x_742) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_748 : f32 = x_21.x_Metallic;
  u_xlat37 = ((-(x_748) * 0.959999979f) + 0.959999979f);
  let x_753 : f32 = u_xlat37;
  let x_755 : vec3<f32> = u_xlat5;
  u_xlat5 = (vec3<f32>(x_753, x_753, x_753) * x_755);
  let x_759 : f32 = x_21.x_Glossiness;
  u_xlat37 = (-(x_759) + 1.0f);
  let x_762 : vec3<f32> = u_xlat0;
  let x_763 : f32 = u_xlat36;
  let x_766 : vec3<f32> = u_xlat3;
  u_xlat0 = ((x_762 * vec3<f32>(x_763, x_763, x_763)) + x_766);
  let x_768 : vec3<f32> = u_xlat0;
  let x_769 : vec3<f32> = u_xlat0;
  u_xlat36 = dot(x_768, x_769);
  let x_771 : f32 = u_xlat36;
  u_xlat36 = max(x_771, 0.001f);
  let x_774 : f32 = u_xlat36;
  u_xlat36 = inverseSqrt(x_774);
  let x_776 : f32 = u_xlat36;
  let x_778 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_776, x_776, x_776) * x_778);
  let x_780 : vec4<f32> = u_xlat6;
  let x_782 : vec3<f32> = u_xlat3;
  u_xlat36 = dot(vec3<f32>(x_780.x, x_780.y, x_780.z), x_782);
  let x_785 : vec4<f32> = u_xlat6;
  let x_787 : vec3<f32> = u_xlat1;
  u_xlat38 = dot(vec3<f32>(x_785.x, x_785.y, x_785.z), x_787);
  let x_789 : f32 = u_xlat38;
  u_xlat38 = clamp(x_789, 0.0f, 1.0f);
  let x_791 : vec4<f32> = u_xlat6;
  let x_793 : vec3<f32> = u_xlat0;
  u_xlat3.x = dot(vec3<f32>(x_791.x, x_791.y, x_791.z), x_793);
  let x_797 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_797, 0.0f, 1.0f);
  let x_800 : vec3<f32> = u_xlat1;
  let x_801 : vec3<f32> = u_xlat0;
  u_xlat0.x = dot(x_800, x_801);
  let x_805 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_805, 0.0f, 1.0f);
  let x_810 : f32 = u_xlat0.x;
  let x_812 : f32 = u_xlat0.x;
  u_xlat12.x = (x_810 * x_812);
  let x_815 : vec3<f32> = u_xlat12;
  let x_817 : f32 = u_xlat37;
  u_xlat12.x = dot(vec2<f32>(x_815.x, x_815.x), vec2<f32>(x_817, x_817));
  let x_822 : f32 = u_xlat12.x;
  u_xlat12.x = (x_822 + -0.5f);
  let x_827 : f32 = u_xlat38;
  u_xlat24 = (-(x_827) + 1.0f);
  let x_830 : f32 = u_xlat24;
  let x_831 : f32 = u_xlat24;
  u_xlat1.x = (x_830 * x_831);
  let x_835 : f32 = u_xlat1.x;
  let x_837 : f32 = u_xlat1.x;
  u_xlat1.x = (x_835 * x_837);
  let x_840 : f32 = u_xlat24;
  let x_842 : f32 = u_xlat1.x;
  u_xlat24 = (x_840 * x_842);
  let x_845 : f32 = u_xlat12.x;
  let x_846 : f32 = u_xlat24;
  u_xlat24 = ((x_845 * x_846) + 1.0f);
  let x_849 : f32 = u_xlat36;
  u_xlat1.x = (-(abs(x_849)) + 1.0f);
  let x_856 : f32 = u_xlat1.x;
  let x_858 : f32 = u_xlat1.x;
  u_xlat13 = (x_856 * x_858);
  let x_860 : f32 = u_xlat13;
  let x_861 : f32 = u_xlat13;
  u_xlat13 = (x_860 * x_861);
  let x_864 : f32 = u_xlat1.x;
  let x_865 : f32 = u_xlat13;
  u_xlat1.x = (x_864 * x_865);
  let x_869 : f32 = u_xlat12.x;
  let x_871 : f32 = u_xlat1.x;
  u_xlat12.x = ((x_869 * x_871) + 1.0f);
  let x_876 : f32 = u_xlat12.x;
  let x_877 : f32 = u_xlat24;
  u_xlat12.x = (x_876 * x_877);
  let x_880 : f32 = u_xlat37;
  let x_881 : f32 = u_xlat37;
  u_xlat24 = (x_880 * x_881);
  let x_883 : f32 = u_xlat24;
  u_xlat24 = max(x_883, 0.002f);
  let x_886 : f32 = u_xlat24;
  u_xlat1.x = (-(x_886) + 1.0f);
  let x_890 : f32 = u_xlat36;
  let x_893 : f32 = u_xlat1.x;
  let x_895 : f32 = u_xlat24;
  u_xlat13 = ((abs(x_890) * x_893) + x_895);
  let x_897 : f32 = u_xlat38;
  let x_899 : f32 = u_xlat1.x;
  let x_901 : f32 = u_xlat24;
  u_xlat1.x = ((x_897 * x_899) + x_901);
  let x_904 : f32 = u_xlat36;
  let x_907 : f32 = u_xlat1.x;
  u_xlat36 = (abs(x_904) * x_907);
  let x_909 : f32 = u_xlat38;
  let x_910 : f32 = u_xlat13;
  let x_912 : f32 = u_xlat36;
  u_xlat36 = ((x_909 * x_910) + x_912);
  let x_914 : f32 = u_xlat36;
  u_xlat36 = (x_914 + 0.00001f);
  let x_917 : f32 = u_xlat36;
  u_xlat36 = (0.5f / x_917);
  let x_919 : f32 = u_xlat24;
  let x_920 : f32 = u_xlat24;
  u_xlat24 = (x_919 * x_920);
  let x_923 : f32 = u_xlat3.x;
  let x_924 : f32 = u_xlat24;
  let x_927 : f32 = u_xlat3.x;
  u_xlat1.x = ((x_923 * x_924) + -(x_927));
  let x_932 : f32 = u_xlat1.x;
  let x_934 : f32 = u_xlat3.x;
  u_xlat1.x = ((x_932 * x_934) + 1.0f);
  let x_938 : f32 = u_xlat24;
  u_xlat24 = (x_938 * 0.318309873f);
  let x_942 : f32 = u_xlat1.x;
  let x_944 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_942 * x_944) + 0.0000001f);
  let x_949 : f32 = u_xlat24;
  let x_951 : f32 = u_xlat1.x;
  u_xlat24 = (x_949 / x_951);
  let x_953 : f32 = u_xlat24;
  let x_954 : f32 = u_xlat36;
  u_xlat12.y = (x_953 * x_954);
  let x_957 : f32 = u_xlat38;
  let x_959 : vec3<f32> = u_xlat12;
  let x_961 : vec2<f32> = (vec2<f32>(x_957, x_957) * vec2<f32>(x_959.x, x_959.y));
  let x_962 : vec3<f32> = u_xlat12;
  u_xlat12 = vec3<f32>(x_961.x, x_961.y, x_962.z);
  let x_965 : f32 = u_xlat12.y;
  u_xlat24 = (x_965 * 3.141592741f);
  let x_968 : f32 = u_xlat24;
  u_xlat24 = max(x_968, 0.0f);
  let x_970 : vec3<f32> = u_xlat4;
  let x_971 : vec3<f32> = u_xlat4;
  u_xlat36 = dot(x_970, x_971);
  let x_974 : f32 = u_xlat36;
  u_xlatb36 = !((x_974 == 0.0f));
  let x_976 : bool = u_xlatb36;
  u_xlat36 = select(0.0f, 1.0f, x_976);
  let x_978 : f32 = u_xlat36;
  let x_979 : f32 = u_xlat24;
  u_xlat24 = (x_978 * x_979);
  let x_981 : vec3<f32> = u_xlat12;
  let x_983 : vec4<f32> = u_xlat2;
  u_xlat1 = (vec3<f32>(x_981.x, x_981.x, x_981.x) * vec3<f32>(x_983.x, x_983.y, x_983.z));
  let x_986 : vec4<f32> = u_xlat2;
  let x_988 : f32 = u_xlat24;
  u_xlat12 = (vec3<f32>(x_986.x, x_986.y, x_986.z) * vec3<f32>(x_988, x_988, x_988));
  let x_992 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_992) + 1.0f);
  let x_997 : f32 = u_xlat0.x;
  let x_999 : f32 = u_xlat0.x;
  u_xlat37 = (x_997 * x_999);
  let x_1001 : f32 = u_xlat37;
  let x_1002 : f32 = u_xlat37;
  u_xlat37 = (x_1001 * x_1002);
  let x_1005 : f32 = u_xlat0.x;
  let x_1006 : f32 = u_xlat37;
  u_xlat0.x = (x_1005 * x_1006);
  let x_1009 : vec3<f32> = u_xlat4;
  let x_1012 : vec3<f32> = (-(x_1009) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_1013 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1012.x, x_1012.y, x_1012.z, x_1013.w);
  let x_1015 : vec4<f32> = u_xlat2;
  let x_1017 : vec3<f32> = u_xlat0;
  let x_1020 : vec3<f32> = u_xlat4;
  let x_1021 : vec3<f32> = ((vec3<f32>(x_1015.x, x_1015.y, x_1015.z) * vec3<f32>(x_1017.x, x_1017.x, x_1017.x)) + x_1020);
  let x_1022 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1021.x, x_1021.y, x_1021.z, x_1022.w);
  let x_1024 : vec3<f32> = u_xlat12;
  let x_1025 : vec4<f32> = u_xlat2;
  u_xlat0 = (x_1024 * vec3<f32>(x_1025.x, x_1025.y, x_1025.z));
  let x_1030 : vec3<f32> = u_xlat5;
  let x_1031 : vec3<f32> = u_xlat1;
  let x_1033 : vec3<f32> = u_xlat0;
  let x_1034 : vec3<f32> = ((x_1030 * x_1031) + x_1033);
  let x_1035 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1034.x, x_1034.y, x_1034.z, x_1035.w);
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

