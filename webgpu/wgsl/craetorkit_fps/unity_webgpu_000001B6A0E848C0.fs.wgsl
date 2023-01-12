struct PGlobals {
  unity_OcclusionMaskSelector : vec4<f32>,
  unity_ProbeVolumeParams : vec4<f32>,
  unity_ProbeVolumeWorldToObject : mat4x4<f32>,
  unity_ProbeVolumeSizeInv : vec3<f32>,
  @size(4)
  padding : u32,
  unity_ProbeVolumeMin : vec3<f32>,
  @size(4)
  padding_1 : u32,
  x_LightColor0 : vec4<f32>,
  x_Color : vec4<f32>,
  x_BumpScale : f32,
  x_GlossMapScale : f32,
  @size(8)
  padding_2 : u32,
  unity_WorldToLight : mat4x4<f32>,
}

@group(0) @binding(1) var x_MetallicGlossMap : texture_2d<f32>;

@group(0) @binding(9) var sampler_MetallicGlossMap : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(7) var sampler_MainTex : sampler;

@group(1) @binding(0) var<uniform> x_46 : PGlobals;

@group(0) @binding(2) var x_BumpMap : texture_2d<f32>;

@group(0) @binding(8) var sampler_BumpMap : sampler;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> vs_TEXCOORD5 : vec3<f32>;

@group(0) @binding(5) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(6) var samplerunity_ProbeVolumeSH : sampler;

@group(0) @binding(3) var x_LightTexture0 : texture_2d<f32>;

@group(0) @binding(10) var sampler_LightTexture0 : sampler;

@group(0) @binding(4) var x_LightTextureB0 : texture_2d<f32>;

@group(0) @binding(11) var sampler_LightTextureB0 : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec3<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat22 : f32;
  var u_xlat9 : vec3<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlatb22 : bool;
  var u_xlat5 : vec4<f32>;
  var x_280 : vec3<f32>;
  var u_xlat23 : f32;
  var u_xlatb23 : bool;
  var u_xlat24 : f32;
  var u_xlat6 : vec3<f32>;
  var u_xlat7 : f32;
  var u_xlat16 : f32;
  var u_xlat10 : f32;
  var u_xlat17 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec4<f32> = vs_TEXCOORD0;
  let x_25 : vec4<f32> = textureSample(x_MetallicGlossMap, sampler_MetallicGlossMap, vec2<f32>(x_23.x, x_23.y));
  let x_26 : vec2<f32> = vec2<f32>(x_25.x, x_25.w);
  let x_27 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_26.x, x_26.y, x_27.z, x_27.w);
  let x_37 : vec4<f32> = vs_TEXCOORD0;
  let x_39 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_37.x, x_37.y));
  u_xlat1 = vec3<f32>(x_39.x, x_39.y, x_39.z);
  let x_42 : vec3<f32> = u_xlat1;
  let x_51 : vec4<f32> = x_46.x_Color;
  let x_53 : vec3<f32> = (x_42 * vec3<f32>(x_51.x, x_51.y, x_51.z));
  let x_54 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_53.x, x_53.y, x_53.z, x_54.w);
  let x_57 : vec4<f32> = x_46.x_Color;
  let x_59 : vec3<f32> = u_xlat1;
  u_xlat1 = ((vec3<f32>(x_57.x, x_57.y, x_57.z) * x_59) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_64 : vec4<f32> = u_xlat0;
  let x_66 : vec3<f32> = u_xlat1;
  u_xlat1 = ((vec3<f32>(x_64.x, x_64.x, x_64.x) * x_66) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_75 : f32 = u_xlat0.x;
  u_xlat0.x = ((-(x_75) * 0.959999979f) + 0.959999979f);
  let x_81 : vec4<f32> = u_xlat0;
  let x_83 : vec4<f32> = u_xlat2;
  let x_85 : vec3<f32> = (vec3<f32>(x_81.x, x_81.x, x_81.x) * vec3<f32>(x_83.x, x_83.y, x_83.z));
  let x_86 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_85.x, x_86.y, x_85.y, x_85.z);
  let x_93 : vec4<f32> = vs_TEXCOORD0;
  let x_95 : vec4<f32> = textureSample(x_BumpMap, sampler_BumpMap, vec2<f32>(x_93.x, x_93.y));
  let x_96 : vec3<f32> = vec3<f32>(x_95.x, x_95.y, x_95.w);
  let x_97 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_96.x, x_96.y, x_96.z, x_97.w);
  let x_101 : f32 = u_xlat2.z;
  let x_103 : f32 = u_xlat2.x;
  u_xlat2.x = (x_101 * x_103);
  let x_106 : vec4<f32> = u_xlat2;
  let x_113 : vec2<f32> = ((vec2<f32>(x_106.x, x_106.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_114 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_113.x, x_113.y, x_114.z, x_114.w);
  let x_116 : vec4<f32> = u_xlat2;
  let x_121 : f32 = x_46.x_BumpScale;
  let x_123 : vec2<f32> = (vec2<f32>(x_116.x, x_116.y) * vec2<f32>(x_121, x_121));
  let x_124 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_123.x, x_123.y, x_124.z, x_124.w);
  let x_127 : vec4<f32> = u_xlat2;
  let x_129 : vec4<f32> = u_xlat2;
  u_xlat22 = dot(vec2<f32>(x_127.x, x_127.y), vec2<f32>(x_129.x, x_129.y));
  let x_132 : f32 = u_xlat22;
  u_xlat22 = min(x_132, 1.0f);
  let x_135 : f32 = u_xlat22;
  u_xlat22 = (-(x_135) + 1.0f);
  let x_138 : f32 = u_xlat22;
  u_xlat22 = sqrt(x_138);
  let x_141 : vec4<f32> = u_xlat2;
  let x_144 : vec4<f32> = vs_TEXCOORD3;
  u_xlat9 = (vec3<f32>(x_141.y, x_141.y, x_141.y) * vec3<f32>(x_144.x, x_144.y, x_144.z));
  let x_148 : vec4<f32> = vs_TEXCOORD2;
  let x_150 : vec4<f32> = u_xlat2;
  let x_153 : vec3<f32> = u_xlat9;
  let x_154 : vec3<f32> = ((vec3<f32>(x_148.x, x_148.y, x_148.z) * vec3<f32>(x_150.x, x_150.x, x_150.x)) + x_153);
  let x_155 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_154.x, x_154.y, x_154.z, x_155.w);
  let x_158 : vec4<f32> = vs_TEXCOORD4;
  let x_160 : f32 = u_xlat22;
  let x_163 : vec4<f32> = u_xlat2;
  let x_165 : vec3<f32> = ((vec3<f32>(x_158.x, x_158.y, x_158.z) * vec3<f32>(x_160, x_160, x_160)) + vec3<f32>(x_163.x, x_163.y, x_163.z));
  let x_166 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_165.x, x_165.y, x_165.z, x_166.w);
  let x_168 : vec4<f32> = u_xlat2;
  let x_170 : vec4<f32> = u_xlat2;
  u_xlat22 = dot(vec3<f32>(x_168.x, x_168.y, x_168.z), vec3<f32>(x_170.x, x_170.y, x_170.z));
  let x_173 : f32 = u_xlat22;
  u_xlat22 = inverseSqrt(x_173);
  let x_175 : f32 = u_xlat22;
  let x_177 : vec4<f32> = u_xlat2;
  let x_179 : vec3<f32> = (vec3<f32>(x_175, x_175, x_175) * vec3<f32>(x_177.x, x_177.y, x_177.z));
  let x_180 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_179.x, x_179.y, x_179.z, x_180.w);
  let x_183 : vec4<f32> = vs_TEXCOORD1;
  let x_185 : vec4<f32> = vs_TEXCOORD1;
  u_xlat22 = dot(vec3<f32>(x_183.x, x_183.y, x_183.z), vec3<f32>(x_185.x, x_185.y, x_185.z));
  let x_188 : f32 = u_xlat22;
  u_xlat22 = inverseSqrt(x_188);
  let x_191 : f32 = u_xlat22;
  let x_193 : vec4<f32> = vs_TEXCOORD1;
  u_xlat3 = (vec3<f32>(x_191, x_191, x_191) * vec3<f32>(x_193.x, x_193.y, x_193.z));
  let x_199 : vec3<f32> = vs_TEXCOORD5;
  let x_204 : vec4<f32> = x_46.unity_WorldToLight[1i];
  u_xlat4 = (vec4<f32>(x_199.y, x_199.y, x_199.y, x_199.y) * x_204);
  let x_208 : vec4<f32> = x_46.unity_WorldToLight[0i];
  let x_209 : vec3<f32> = vs_TEXCOORD5;
  let x_212 : vec4<f32> = u_xlat4;
  u_xlat4 = ((x_208 * vec4<f32>(x_209.x, x_209.x, x_209.x, x_209.x)) + x_212);
  let x_216 : vec4<f32> = x_46.unity_WorldToLight[2i];
  let x_217 : vec3<f32> = vs_TEXCOORD5;
  let x_220 : vec4<f32> = u_xlat4;
  u_xlat4 = ((x_216 * vec4<f32>(x_217.z, x_217.z, x_217.z, x_217.z)) + x_220);
  let x_222 : vec4<f32> = u_xlat4;
  let x_225 : vec4<f32> = x_46.unity_WorldToLight[3i];
  u_xlat4 = (x_222 + x_225);
  let x_231 : f32 = x_46.unity_ProbeVolumeParams.x;
  u_xlatb22 = (x_231 == 1.0f);
  let x_233 : bool = u_xlatb22;
  if (x_233) {
    let x_238 : f32 = x_46.unity_ProbeVolumeParams.y;
    u_xlatb22 = (x_238 == 1.0f);
    let x_241 : vec3<f32> = vs_TEXCOORD5;
    let x_244 : vec4<f32> = x_46.unity_ProbeVolumeWorldToObject[1i];
    let x_246 : vec3<f32> = (vec3<f32>(x_241.y, x_241.y, x_241.y) * vec3<f32>(x_244.x, x_244.y, x_244.z));
    let x_247 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_246.x, x_246.y, x_246.z, x_247.w);
    let x_250 : vec4<f32> = x_46.unity_ProbeVolumeWorldToObject[0i];
    let x_252 : vec3<f32> = vs_TEXCOORD5;
    let x_255 : vec4<f32> = u_xlat5;
    let x_257 : vec3<f32> = ((vec3<f32>(x_250.x, x_250.y, x_250.z) * vec3<f32>(x_252.x, x_252.x, x_252.x)) + vec3<f32>(x_255.x, x_255.y, x_255.z));
    let x_258 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_257.x, x_257.y, x_257.z, x_258.w);
    let x_261 : vec4<f32> = x_46.unity_ProbeVolumeWorldToObject[2i];
    let x_263 : vec3<f32> = vs_TEXCOORD5;
    let x_266 : vec4<f32> = u_xlat5;
    let x_268 : vec3<f32> = ((vec3<f32>(x_261.x, x_261.y, x_261.z) * vec3<f32>(x_263.z, x_263.z, x_263.z)) + vec3<f32>(x_266.x, x_266.y, x_266.z));
    let x_269 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_268.x, x_268.y, x_268.z, x_269.w);
    let x_271 : vec4<f32> = u_xlat5;
    let x_274 : vec4<f32> = x_46.unity_ProbeVolumeWorldToObject[3i];
    let x_276 : vec3<f32> = (vec3<f32>(x_271.x, x_271.y, x_271.z) + vec3<f32>(x_274.x, x_274.y, x_274.z));
    let x_277 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_276.x, x_276.y, x_276.z, x_277.w);
    let x_279 : bool = u_xlatb22;
    if (x_279) {
      let x_283 : vec4<f32> = u_xlat5;
      x_280 = vec3<f32>(x_283.x, x_283.y, x_283.z);
    } else {
      let x_286 : vec3<f32> = vs_TEXCOORD5;
      x_280 = x_286;
    }
    let x_287 : vec3<f32> = x_280;
    let x_288 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_287.x, x_287.y, x_287.z, x_288.w);
    let x_290 : vec4<f32> = u_xlat5;
    let x_295 : vec3<f32> = x_46.unity_ProbeVolumeMin;
    let x_297 : vec3<f32> = (vec3<f32>(x_290.x, x_290.y, x_290.z) + -(x_295));
    let x_298 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_297.x, x_297.y, x_297.z, x_298.w);
    let x_300 : vec4<f32> = u_xlat5;
    let x_303 : vec3<f32> = x_46.unity_ProbeVolumeSizeInv;
    let x_304 : vec3<f32> = (vec3<f32>(x_300.x, x_300.y, x_300.z) * x_303);
    let x_305 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_305.x, x_304.x, x_304.y, x_304.z);
    let x_308 : f32 = u_xlat5.y;
    u_xlat22 = ((x_308 * 0.25f) + 0.75f);
    let x_315 : f32 = x_46.unity_ProbeVolumeParams.z;
    u_xlat23 = ((x_315 * 0.5f) + 0.75f);
    let x_319 : f32 = u_xlat22;
    let x_320 : f32 = u_xlat23;
    u_xlat5.x = max(x_319, x_320);
    let x_331 : vec4<f32> = u_xlat5;
    let x_333 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_331.x, x_331.z, x_331.w));
    u_xlat5 = x_333;
  } else {
    u_xlat5.x = 1.0f;
    u_xlat5.y = 1.0f;
    u_xlat5.z = 1.0f;
    u_xlat5.w = 1.0f;
  }
  let x_340 : vec4<f32> = u_xlat5;
  let x_342 : vec4<f32> = x_46.unity_OcclusionMaskSelector;
  u_xlat22 = dot(x_340, x_342);
  let x_344 : f32 = u_xlat22;
  u_xlat22 = clamp(x_344, 0.0f, 1.0f);
  let x_349 : f32 = u_xlat4.z;
  u_xlatb23 = (0.0f < x_349);
  let x_351 : bool = u_xlatb23;
  u_xlat23 = select(0.0f, 1.0f, x_351);
  let x_353 : vec4<f32> = u_xlat4;
  let x_355 : vec4<f32> = u_xlat4;
  let x_357 : vec2<f32> = (vec2<f32>(x_353.x, x_353.y) / vec2<f32>(x_355.w, x_355.w));
  let x_358 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_357.x, x_357.y, x_358.z, x_358.w);
  let x_360 : vec4<f32> = u_xlat5;
  let x_363 : vec2<f32> = (vec2<f32>(x_360.x, x_360.y) + vec2<f32>(0.5f, 0.5f));
  let x_364 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_363.x, x_363.y, x_364.z, x_364.w);
  let x_372 : vec4<f32> = u_xlat5;
  let x_374 : vec4<f32> = textureSample(x_LightTexture0, sampler_LightTexture0, vec2<f32>(x_372.x, x_372.y));
  u_xlat24 = x_374.w;
  let x_376 : f32 = u_xlat23;
  let x_377 : f32 = u_xlat24;
  u_xlat23 = (x_376 * x_377);
  let x_379 : vec4<f32> = u_xlat4;
  let x_381 : vec4<f32> = u_xlat4;
  u_xlat24 = dot(vec3<f32>(x_379.x, x_379.y, x_379.z), vec3<f32>(x_381.x, x_381.y, x_381.z));
  let x_389 : f32 = u_xlat24;
  let x_391 : vec4<f32> = textureSample(x_LightTextureB0, sampler_LightTextureB0, vec2<f32>(x_389, x_389));
  u_xlat24 = x_391.x;
  let x_393 : f32 = u_xlat23;
  let x_394 : f32 = u_xlat24;
  u_xlat23 = (x_393 * x_394);
  let x_396 : f32 = u_xlat22;
  let x_397 : f32 = u_xlat23;
  u_xlat22 = (x_396 * x_397);
  let x_401 : f32 = vs_TEXCOORD2.w;
  u_xlat4.x = x_401;
  let x_404 : f32 = vs_TEXCOORD3.w;
  u_xlat4.y = x_404;
  let x_407 : f32 = vs_TEXCOORD4.w;
  u_xlat4.z = x_407;
  let x_409 : vec4<f32> = u_xlat4;
  let x_411 : vec4<f32> = u_xlat4;
  u_xlat23 = dot(vec3<f32>(x_409.x, x_409.y, x_409.z), vec3<f32>(x_411.x, x_411.y, x_411.z));
  let x_414 : f32 = u_xlat23;
  u_xlat23 = inverseSqrt(x_414);
  let x_416 : f32 = u_xlat23;
  let x_418 : vec4<f32> = u_xlat4;
  let x_420 : vec3<f32> = (vec3<f32>(x_416, x_416, x_416) * vec3<f32>(x_418.x, x_418.y, x_418.z));
  let x_421 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_420.x, x_420.y, x_420.z, x_421.w);
  let x_424 : f32 = u_xlat22;
  let x_428 : vec4<f32> = x_46.x_LightColor0;
  u_xlat6 = (vec3<f32>(x_424, x_424, x_424) * vec3<f32>(x_428.x, x_428.y, x_428.z));
  let x_433 : f32 = u_xlat0.y;
  let x_437 : f32 = x_46.x_GlossMapScale;
  u_xlat7 = ((-(x_433) * x_437) + 1.0f);
  let x_440 : vec4<f32> = u_xlat4;
  let x_442 : f32 = u_xlat23;
  let x_445 : vec3<f32> = u_xlat3;
  let x_447 : vec3<f32> = ((vec3<f32>(x_440.x, x_440.y, x_440.z) * vec3<f32>(x_442, x_442, x_442)) + -(x_445));
  let x_448 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_447.x, x_447.y, x_447.z, x_448.w);
  let x_450 : vec4<f32> = u_xlat4;
  let x_452 : vec4<f32> = u_xlat4;
  u_xlat22 = dot(vec3<f32>(x_450.x, x_450.y, x_450.z), vec3<f32>(x_452.x, x_452.y, x_452.z));
  let x_455 : f32 = u_xlat22;
  u_xlat22 = max(x_455, 0.001f);
  let x_458 : f32 = u_xlat22;
  u_xlat22 = inverseSqrt(x_458);
  let x_460 : f32 = u_xlat22;
  let x_462 : vec4<f32> = u_xlat4;
  let x_464 : vec3<f32> = (vec3<f32>(x_460, x_460, x_460) * vec3<f32>(x_462.x, x_462.y, x_462.z));
  let x_465 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_464.x, x_464.y, x_464.z, x_465.w);
  let x_467 : vec4<f32> = u_xlat2;
  let x_469 : vec3<f32> = u_xlat3;
  u_xlat22 = dot(vec3<f32>(x_467.x, x_467.y, x_467.z), -(x_469));
  let x_472 : vec4<f32> = u_xlat2;
  let x_474 : vec4<f32> = u_xlat5;
  u_xlat23 = dot(vec3<f32>(x_472.x, x_472.y, x_472.z), vec3<f32>(x_474.x, x_474.y, x_474.z));
  let x_477 : f32 = u_xlat23;
  u_xlat23 = clamp(x_477, 0.0f, 1.0f);
  let x_479 : vec4<f32> = u_xlat2;
  let x_481 : vec4<f32> = u_xlat4;
  u_xlat2.x = dot(vec3<f32>(x_479.x, x_479.y, x_479.z), vec3<f32>(x_481.x, x_481.y, x_481.z));
  let x_486 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_486, 0.0f, 1.0f);
  let x_489 : vec4<f32> = u_xlat5;
  let x_491 : vec4<f32> = u_xlat4;
  u_xlat9.x = dot(vec3<f32>(x_489.x, x_489.y, x_489.z), vec3<f32>(x_491.x, x_491.y, x_491.z));
  let x_496 : f32 = u_xlat9.x;
  u_xlat9.x = clamp(x_496, 0.0f, 1.0f);
  let x_501 : f32 = u_xlat9.x;
  let x_503 : f32 = u_xlat9.x;
  u_xlat16 = (x_501 * x_503);
  let x_505 : f32 = u_xlat16;
  let x_507 : f32 = u_xlat7;
  u_xlat16 = dot(vec2<f32>(x_505, x_505), vec2<f32>(x_507, x_507));
  let x_510 : f32 = u_xlat16;
  u_xlat16 = (x_510 + -0.5f);
  let x_513 : f32 = u_xlat23;
  u_xlat3.x = (-(x_513) + 1.0f);
  let x_519 : f32 = u_xlat3.x;
  let x_521 : f32 = u_xlat3.x;
  u_xlat10 = (x_519 * x_521);
  let x_523 : f32 = u_xlat10;
  let x_524 : f32 = u_xlat10;
  u_xlat10 = (x_523 * x_524);
  let x_527 : f32 = u_xlat3.x;
  let x_528 : f32 = u_xlat10;
  u_xlat3.x = (x_527 * x_528);
  let x_531 : f32 = u_xlat16;
  let x_533 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_531 * x_533) + 1.0f);
  let x_537 : f32 = u_xlat22;
  u_xlat10 = (-(abs(x_537)) + 1.0f);
  let x_542 : f32 = u_xlat10;
  let x_543 : f32 = u_xlat10;
  u_xlat17 = (x_542 * x_543);
  let x_545 : f32 = u_xlat17;
  let x_546 : f32 = u_xlat17;
  u_xlat17 = (x_545 * x_546);
  let x_548 : f32 = u_xlat10;
  let x_549 : f32 = u_xlat17;
  u_xlat10 = (x_548 * x_549);
  let x_551 : f32 = u_xlat16;
  let x_552 : f32 = u_xlat10;
  u_xlat16 = ((x_551 * x_552) + 1.0f);
  let x_555 : f32 = u_xlat16;
  let x_557 : f32 = u_xlat3.x;
  u_xlat16 = (x_555 * x_557);
  let x_559 : f32 = u_xlat23;
  let x_560 : f32 = u_xlat16;
  u_xlat16 = (x_559 * x_560);
  let x_562 : f32 = u_xlat7;
  let x_563 : f32 = u_xlat7;
  u_xlat7 = (x_562 * x_563);
  let x_565 : f32 = u_xlat7;
  u_xlat7 = max(x_565, 0.002f);
  let x_568 : f32 = u_xlat7;
  u_xlat3.x = (-(x_568) + 1.0f);
  let x_572 : f32 = u_xlat22;
  let x_575 : f32 = u_xlat3.x;
  let x_577 : f32 = u_xlat7;
  u_xlat10 = ((abs(x_572) * x_575) + x_577);
  let x_579 : f32 = u_xlat23;
  let x_581 : f32 = u_xlat3.x;
  let x_583 : f32 = u_xlat7;
  u_xlat3.x = ((x_579 * x_581) + x_583);
  let x_586 : f32 = u_xlat22;
  let x_589 : f32 = u_xlat3.x;
  u_xlat22 = (abs(x_586) * x_589);
  let x_591 : f32 = u_xlat23;
  let x_592 : f32 = u_xlat10;
  let x_594 : f32 = u_xlat22;
  u_xlat22 = ((x_591 * x_592) + x_594);
  let x_596 : f32 = u_xlat22;
  u_xlat22 = (x_596 + 0.00001f);
  let x_599 : f32 = u_xlat22;
  u_xlat22 = (0.5f / x_599);
  let x_601 : f32 = u_xlat7;
  let x_602 : f32 = u_xlat7;
  u_xlat7 = (x_601 * x_602);
  let x_605 : f32 = u_xlat2.x;
  let x_606 : f32 = u_xlat7;
  let x_609 : f32 = u_xlat2.x;
  u_xlat3.x = ((x_605 * x_606) + -(x_609));
  let x_614 : f32 = u_xlat3.x;
  let x_616 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_614 * x_616) + 1.0f);
  let x_620 : f32 = u_xlat7;
  u_xlat7 = (x_620 * 0.318309873f);
  let x_624 : f32 = u_xlat2.x;
  let x_626 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_624 * x_626) + 0.0000001f);
  let x_631 : f32 = u_xlat7;
  let x_633 : f32 = u_xlat2.x;
  u_xlat7 = (x_631 / x_633);
  let x_635 : f32 = u_xlat7;
  let x_636 : f32 = u_xlat22;
  u_xlat7 = (x_635 * x_636);
  let x_638 : f32 = u_xlat23;
  let x_639 : f32 = u_xlat7;
  u_xlat7 = (x_638 * x_639);
  let x_641 : f32 = u_xlat7;
  u_xlat7 = (x_641 * 3.141592741f);
  let x_644 : f32 = u_xlat7;
  u_xlat7 = max(x_644, 0.0f);
  let x_646 : vec3<f32> = u_xlat1;
  let x_647 : vec3<f32> = u_xlat1;
  u_xlat22 = dot(x_646, x_647);
  let x_649 : f32 = u_xlat22;
  u_xlatb22 = !((x_649 == 0.0f));
  let x_651 : bool = u_xlatb22;
  u_xlat22 = select(0.0f, 1.0f, x_651);
  let x_653 : f32 = u_xlat7;
  let x_654 : f32 = u_xlat22;
  u_xlat7 = (x_653 * x_654);
  let x_656 : f32 = u_xlat16;
  let x_658 : vec3<f32> = u_xlat6;
  let x_659 : vec3<f32> = (vec3<f32>(x_656, x_656, x_656) * x_658);
  let x_660 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_659.x, x_660.y, x_659.y, x_659.z);
  let x_662 : vec3<f32> = u_xlat6;
  let x_663 : f32 = u_xlat7;
  u_xlat3 = (x_662 * vec3<f32>(x_663, x_663, x_663));
  let x_667 : f32 = u_xlat9.x;
  u_xlat7 = (-(x_667) + 1.0f);
  let x_670 : f32 = u_xlat7;
  let x_671 : f32 = u_xlat7;
  u_xlat22 = (x_670 * x_671);
  let x_673 : f32 = u_xlat22;
  let x_674 : f32 = u_xlat22;
  u_xlat22 = (x_673 * x_674);
  let x_676 : f32 = u_xlat7;
  let x_677 : f32 = u_xlat22;
  u_xlat7 = (x_676 * x_677);
  let x_679 : vec3<f32> = u_xlat1;
  let x_682 : vec3<f32> = (-(x_679) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_683 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_682.x, x_682.y, x_682.z, x_683.w);
  let x_685 : vec4<f32> = u_xlat4;
  let x_687 : f32 = u_xlat7;
  let x_690 : vec3<f32> = u_xlat1;
  u_xlat1 = ((vec3<f32>(x_685.x, x_685.y, x_685.z) * vec3<f32>(x_687, x_687, x_687)) + x_690);
  let x_692 : vec3<f32> = u_xlat1;
  let x_693 : vec3<f32> = u_xlat3;
  u_xlat1 = (x_692 * x_693);
  let x_697 : vec4<f32> = u_xlat0;
  let x_699 : vec4<f32> = u_xlat2;
  let x_702 : vec3<f32> = u_xlat1;
  let x_703 : vec3<f32> = ((vec3<f32>(x_697.x, x_697.z, x_697.w) * vec3<f32>(x_699.x, x_699.z, x_699.w)) + x_702);
  let x_704 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_703.x, x_703.y, x_703.z, x_704.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(4) vs_TEXCOORD4_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec4<f32>, @location(5) vs_TEXCOORD5_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD5 = vs_TEXCOORD5_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

