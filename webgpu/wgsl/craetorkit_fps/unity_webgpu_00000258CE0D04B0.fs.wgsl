type Arr = array<mat4x4<f32>, 4u>;

struct PGlobals {
  x_Time : vec4<f32>,
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding : u32,
  x_ProjectionParams : vec4<f32>,
  x_WorldSpaceLightPos0 : vec4<f32>,
  unity_OcclusionMaskSelector : vec4<f32>,
  unity_WorldToShadow : Arr,
  x_LightShadowData : vec4<f32>,
  unity_ShadowFadeCenterAndType : vec4<f32>,
  unity_MatrixV : mat4x4<f32>,
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
  x_Color : vec4<f32>,
  x_NormalSacle : f32,
  x_MovementSpeed : f32,
}

var<private> vs_TEXCOORD4 : vec3<f32>;

@group(1) @binding(0) var<uniform> x_21 : PGlobals;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(10) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> vs_COLOR0 : vec4<f32>;

@group(0) @binding(1) var x_Normal : texture_2d<f32>;

@group(0) @binding(11) var sampler_Normal : sampler;

@group(0) @binding(4) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(6) var samplerunity_ProbeVolumeSH : sampler;

@group(0) @binding(5) var x_ShadowMapTexture : texture_depth_2d;

@group(0) @binding(7) var sampler_ShadowMapTexture : sampler_comparison;

@group(0) @binding(2) var x_LightTexture0 : texture_2d<f32>;

@group(0) @binding(8) var sampler_LightTexture0 : sampler;

@group(0) @binding(3) var x_LightTextureB0 : texture_2d<f32>;

@group(0) @binding(9) var sampler_LightTextureB0 : sampler;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

var<private> vs_TEXCOORD8 : f32;

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
  var u_xlat7 : vec4<f32>;
  var u_xlat8 : vec4<f32>;
  var u_xlatb2 : bool;
  var u_xlat11 : vec3<f32>;
  var x_326 : vec3<f32>;
  var u_xlat30 : f32;
  var txVec0 : vec3<f32>;
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
  let x_26 : vec4<f32> = x_21.x_WorldSpaceLightPos0;
  u_xlat0 = (-(x_12) + vec3<f32>(x_26.x, x_26.y, x_26.z));
  let x_31 : vec3<f32> = u_xlat0;
  let x_32 : vec3<f32> = u_xlat0;
  u_xlat27 = dot(x_31, x_32);
  let x_34 : f32 = u_xlat27;
  u_xlat27 = inverseSqrt(x_34);
  let x_37 : f32 = u_xlat27;
  let x_39 : vec3<f32> = u_xlat0;
  u_xlat1 = (vec3<f32>(x_37, x_37, x_37) * x_39);
  let x_43 : vec3<f32> = vs_TEXCOORD4;
  let x_48 : vec3<f32> = x_21.x_WorldSpaceCameraPos;
  let x_49 : vec3<f32> = (-(x_43) + x_48);
  let x_50 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_49.x, x_49.y, x_49.z, x_50.w);
  let x_53 : vec4<f32> = u_xlat2;
  let x_55 : vec4<f32> = u_xlat2;
  u_xlat28 = dot(vec3<f32>(x_53.x, x_53.y, x_53.z), vec3<f32>(x_55.x, x_55.y, x_55.z));
  let x_58 : f32 = u_xlat28;
  u_xlat28 = inverseSqrt(x_58);
  let x_61 : f32 = u_xlat28;
  let x_63 : vec4<f32> = u_xlat2;
  u_xlat3 = (vec3<f32>(x_61, x_61, x_61) * vec3<f32>(x_63.x, x_63.y, x_63.z));
  let x_80 : vec4<f32> = vs_TEXCOORD0;
  let x_82 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_80.x, x_80.y));
  u_xlat4 = x_82;
  let x_83 : vec4<f32> = u_xlat4;
  let x_87 : vec4<f32> = x_21.x_Color;
  let x_89 : vec3<f32> = (vec3<f32>(x_83.x, x_83.y, x_83.z) * vec3<f32>(x_87.x, x_87.y, x_87.z));
  let x_90 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_89.x, x_89.y, x_89.z, x_90.w);
  let x_93 : vec4<f32> = u_xlat4;
  let x_96 : vec4<f32> = vs_COLOR0;
  u_xlat5 = (vec3<f32>(x_93.x, x_93.y, x_93.z) * vec3<f32>(x_96.x, x_96.y, x_96.z));
  let x_104 : f32 = x_21.x_Time.x;
  let x_107 : f32 = x_21.x_MovementSpeed;
  let x_112 : f32 = vs_TEXCOORD0.z;
  u_xlat6.x = ((x_104 * x_107) + x_112);
  let x_116 : f32 = x_21.x_Time.x;
  let x_119 : f32 = x_21.x_MovementSpeed;
  let x_123 : f32 = vs_TEXCOORD0.w;
  u_xlat6.y = ((-(x_116) * x_119) + x_123);
  let x_132 : vec3<f32> = u_xlat6;
  let x_134 : vec4<f32> = textureSample(x_Normal, sampler_Normal, vec2<f32>(x_132.x, x_132.y));
  u_xlat6 = vec3<f32>(x_134.x, x_134.y, x_134.w);
  let x_137 : f32 = u_xlat6.z;
  let x_139 : f32 = u_xlat6.x;
  u_xlat6.x = (x_137 * x_139);
  let x_142 : vec3<f32> = u_xlat6;
  let x_149 : vec2<f32> = ((vec2<f32>(x_142.x, x_142.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_150 : vec3<f32> = u_xlat6;
  u_xlat6 = vec3<f32>(x_149.x, x_149.y, x_150.z);
  let x_152 : vec3<f32> = u_xlat6;
  let x_156 : f32 = x_21.x_NormalSacle;
  let x_158 : vec2<f32> = (vec2<f32>(x_152.x, x_152.y) * vec2<f32>(x_156, x_156));
  let x_159 : vec3<f32> = u_xlat6;
  u_xlat6 = vec3<f32>(x_158.x, x_158.y, x_159.z);
  let x_161 : vec3<f32> = u_xlat6;
  let x_163 : vec3<f32> = u_xlat6;
  u_xlat28 = dot(vec2<f32>(x_161.x, x_161.y), vec2<f32>(x_163.x, x_163.y));
  let x_166 : f32 = u_xlat28;
  u_xlat28 = min(x_166, 1.0f);
  let x_169 : f32 = u_xlat28;
  u_xlat28 = (-(x_169) + 1.0f);
  let x_172 : f32 = u_xlat28;
  u_xlat6.z = sqrt(x_172);
  let x_176 : f32 = vs_COLOR0.w;
  u_xlat28 = (-(x_176) + 1.0f);
  let x_180 : f32 = u_xlat4.w;
  let x_182 : f32 = x_21.x_Color.w;
  let x_184 : f32 = u_xlat28;
  u_xlat28 = ((x_180 * x_182) + -(x_184));
  let x_190 : f32 = u_xlat28;
  u_xlatb28 = (x_190 < 0.0f);
  let x_193 : bool = u_xlatb28;
  if (((select(0i, 1i, x_193) * -1i) != 0i)) {
    discard;
  }
  let x_202 : vec3<f32> = vs_TEXCOORD4;
  let x_206 : vec4<f32> = x_21.unity_WorldToLight[1i];
  u_xlat7 = (vec4<f32>(x_202.y, x_202.y, x_202.y, x_202.y) * x_206);
  let x_209 : vec4<f32> = x_21.unity_WorldToLight[0i];
  let x_210 : vec3<f32> = vs_TEXCOORD4;
  let x_213 : vec4<f32> = u_xlat7;
  u_xlat7 = ((x_209 * vec4<f32>(x_210.x, x_210.x, x_210.x, x_210.x)) + x_213);
  let x_217 : vec4<f32> = x_21.unity_WorldToLight[2i];
  let x_218 : vec3<f32> = vs_TEXCOORD4;
  let x_221 : vec4<f32> = u_xlat7;
  u_xlat7 = ((x_217 * vec4<f32>(x_218.z, x_218.z, x_218.z, x_218.z)) + x_221);
  let x_223 : vec4<f32> = u_xlat7;
  let x_225 : vec4<f32> = x_21.unity_WorldToLight[3i];
  u_xlat7 = (x_223 + x_225);
  let x_230 : f32 = x_21.unity_MatrixV[0i].z;
  u_xlat8.x = x_230;
  let x_233 : f32 = x_21.unity_MatrixV[1i].z;
  u_xlat8.y = x_233;
  let x_236 : f32 = x_21.unity_MatrixV[2i].z;
  u_xlat8.z = x_236;
  let x_238 : vec4<f32> = u_xlat2;
  let x_240 : vec4<f32> = u_xlat8;
  u_xlat28 = dot(vec3<f32>(x_238.x, x_238.y, x_238.z), vec3<f32>(x_240.x, x_240.y, x_240.z));
  let x_243 : vec3<f32> = vs_TEXCOORD4;
  let x_246 : vec4<f32> = x_21.unity_ShadowFadeCenterAndType;
  let x_249 : vec3<f32> = (x_243 + -(vec3<f32>(x_246.x, x_246.y, x_246.z)));
  let x_250 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_249.x, x_249.y, x_249.z, x_250.w);
  let x_252 : vec4<f32> = u_xlat2;
  let x_254 : vec4<f32> = u_xlat2;
  u_xlat2.x = dot(vec3<f32>(x_252.x, x_252.y, x_252.z), vec3<f32>(x_254.x, x_254.y, x_254.z));
  let x_259 : f32 = u_xlat2.x;
  u_xlat2.x = sqrt(x_259);
  let x_262 : f32 = u_xlat28;
  let x_265 : f32 = u_xlat2.x;
  u_xlat2.x = (-(x_262) + x_265);
  let x_269 : f32 = x_21.unity_ShadowFadeCenterAndType.w;
  let x_271 : f32 = u_xlat2.x;
  let x_273 : f32 = u_xlat28;
  u_xlat28 = ((x_269 * x_271) + x_273);
  let x_275 : f32 = u_xlat28;
  let x_278 : f32 = x_21.x_LightShadowData.z;
  let x_281 : f32 = x_21.x_LightShadowData.w;
  u_xlat28 = ((x_275 * x_278) + x_281);
  let x_283 : f32 = u_xlat28;
  u_xlat28 = clamp(x_283, 0.0f, 1.0f);
  let x_288 : f32 = x_21.unity_ProbeVolumeParams.x;
  u_xlatb2 = (x_288 == 1.0f);
  let x_290 : bool = u_xlatb2;
  if (x_290) {
    let x_294 : f32 = x_21.unity_ProbeVolumeParams.y;
    u_xlatb2 = (x_294 == 1.0f);
    let x_297 : vec3<f32> = vs_TEXCOORD4;
    let x_301 : vec4<f32> = x_21.unity_ProbeVolumeWorldToObject[1i];
    u_xlat11 = (vec3<f32>(x_297.y, x_297.y, x_297.y) * vec3<f32>(x_301.x, x_301.y, x_301.z));
    let x_305 : vec4<f32> = x_21.unity_ProbeVolumeWorldToObject[0i];
    let x_307 : vec3<f32> = vs_TEXCOORD4;
    let x_310 : vec3<f32> = u_xlat11;
    u_xlat11 = ((vec3<f32>(x_305.x, x_305.y, x_305.z) * vec3<f32>(x_307.x, x_307.x, x_307.x)) + x_310);
    let x_313 : vec4<f32> = x_21.unity_ProbeVolumeWorldToObject[2i];
    let x_315 : vec3<f32> = vs_TEXCOORD4;
    let x_318 : vec3<f32> = u_xlat11;
    u_xlat11 = ((vec3<f32>(x_313.x, x_313.y, x_313.z) * vec3<f32>(x_315.z, x_315.z, x_315.z)) + x_318);
    let x_320 : vec3<f32> = u_xlat11;
    let x_322 : vec4<f32> = x_21.unity_ProbeVolumeWorldToObject[3i];
    u_xlat11 = (x_320 + vec3<f32>(x_322.x, x_322.y, x_322.z));
    let x_325 : bool = u_xlatb2;
    if (x_325) {
      let x_329 : vec3<f32> = u_xlat11;
      x_326 = x_329;
    } else {
      let x_331 : vec3<f32> = vs_TEXCOORD4;
      x_326 = x_331;
    }
    let x_332 : vec3<f32> = x_326;
    let x_333 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_332.x, x_332.y, x_332.z, x_333.w);
    let x_335 : vec4<f32> = u_xlat2;
    let x_339 : vec3<f32> = x_21.unity_ProbeVolumeMin;
    let x_341 : vec3<f32> = (vec3<f32>(x_335.x, x_335.y, x_335.z) + -(x_339));
    let x_342 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_341.x, x_341.y, x_341.z, x_342.w);
    let x_344 : vec4<f32> = u_xlat2;
    let x_348 : vec3<f32> = x_21.unity_ProbeVolumeSizeInv;
    let x_349 : vec3<f32> = (vec3<f32>(x_344.x, x_344.y, x_344.z) * x_348);
    let x_350 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_350.x, x_349.x, x_349.y, x_349.z);
    let x_353 : f32 = u_xlat2.y;
    u_xlat11.x = ((x_353 * 0.25f) + 0.75f);
    let x_361 : f32 = x_21.unity_ProbeVolumeParams.z;
    u_xlat30 = ((x_361 * 0.5f) + 0.75f);
    let x_366 : f32 = u_xlat11.x;
    let x_367 : f32 = u_xlat30;
    u_xlat2.x = max(x_366, x_367);
    let x_378 : vec4<f32> = u_xlat2;
    let x_380 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_378.x, x_378.z, x_378.w));
    u_xlat2 = x_380;
  } else {
    u_xlat2.x = 1.0f;
    u_xlat2.y = 1.0f;
    u_xlat2.z = 1.0f;
    u_xlat2.w = 1.0f;
  }
  let x_386 : vec4<f32> = u_xlat2;
  let x_389 : vec4<f32> = x_21.unity_OcclusionMaskSelector;
  u_xlat2.x = dot(x_386, x_389);
  let x_393 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_393, 0.0f, 1.0f);
  let x_396 : vec3<f32> = vs_TEXCOORD4;
  let x_400 : vec4<f32> = x_21.unity_WorldToShadow[0i][1i];
  u_xlat8 = (vec4<f32>(x_396.y, x_396.y, x_396.y, x_396.y) * x_400);
  let x_403 : vec4<f32> = x_21.unity_WorldToShadow[0i][0i];
  let x_404 : vec3<f32> = vs_TEXCOORD4;
  let x_407 : vec4<f32> = u_xlat8;
  u_xlat8 = ((x_403 * vec4<f32>(x_404.x, x_404.x, x_404.x, x_404.x)) + x_407);
  let x_410 : vec4<f32> = x_21.unity_WorldToShadow[0i][2i];
  let x_411 : vec3<f32> = vs_TEXCOORD4;
  let x_414 : vec4<f32> = u_xlat8;
  u_xlat8 = ((x_410 * vec4<f32>(x_411.z, x_411.z, x_411.z, x_411.z)) + x_414);
  let x_416 : vec4<f32> = u_xlat8;
  let x_418 : vec4<f32> = x_21.unity_WorldToShadow[0i][3i];
  u_xlat8 = (x_416 + x_418);
  let x_420 : vec4<f32> = u_xlat8;
  let x_422 : vec4<f32> = u_xlat8;
  u_xlat11 = (vec3<f32>(x_420.x, x_420.y, x_420.z) / vec3<f32>(x_422.w, x_422.w, x_422.w));
  let x_426 : vec3<f32> = u_xlat11;
  let x_427 : vec2<f32> = vec2<f32>(x_426.x, x_426.y);
  let x_429 : f32 = u_xlat11.z;
  txVec0 = vec3<f32>(x_427.x, x_427.y, x_429);
  let x_441 : vec3<f32> = txVec0;
  let x_443 : f32 = textureSampleCompareLevel(x_ShadowMapTexture, sampler_ShadowMapTexture, x_441.xy, x_441.z);
  u_xlat11.x = x_443;
  let x_447 : f32 = x_21.x_LightShadowData.x;
  u_xlat20 = (-(x_447) + 1.0f);
  let x_451 : f32 = u_xlat11.x;
  let x_452 : f32 = u_xlat20;
  let x_455 : f32 = x_21.x_LightShadowData.x;
  u_xlat11.x = ((x_451 * x_452) + x_455);
  let x_459 : f32 = u_xlat11.x;
  let x_462 : f32 = u_xlat2.x;
  u_xlat2.x = (-(x_459) + x_462);
  let x_465 : f32 = u_xlat28;
  let x_467 : f32 = u_xlat2.x;
  let x_470 : f32 = u_xlat11.x;
  u_xlat28 = ((x_465 * x_467) + x_470);
  let x_473 : f32 = u_xlat7.z;
  u_xlatb2 = (0.0f < x_473);
  let x_475 : bool = u_xlatb2;
  u_xlat2.x = select(0.0f, 1.0f, x_475);
  let x_478 : vec4<f32> = u_xlat7;
  let x_480 : vec4<f32> = u_xlat7;
  let x_482 : vec2<f32> = (vec2<f32>(x_478.x, x_478.y) / vec2<f32>(x_480.w, x_480.w));
  let x_483 : vec3<f32> = u_xlat11;
  u_xlat11 = vec3<f32>(x_482.x, x_482.y, x_483.z);
  let x_485 : vec3<f32> = u_xlat11;
  let x_488 : vec2<f32> = (vec2<f32>(x_485.x, x_485.y) + vec2<f32>(0.5f, 0.5f));
  let x_489 : vec3<f32> = u_xlat11;
  u_xlat11 = vec3<f32>(x_488.x, x_488.y, x_489.z);
  let x_496 : vec3<f32> = u_xlat11;
  let x_498 : vec4<f32> = textureSample(x_LightTexture0, sampler_LightTexture0, vec2<f32>(x_496.x, x_496.y));
  u_xlat11.x = x_498.w;
  let x_502 : f32 = u_xlat11.x;
  let x_504 : f32 = u_xlat2.x;
  u_xlat2.x = (x_502 * x_504);
  let x_507 : vec4<f32> = u_xlat7;
  let x_509 : vec4<f32> = u_xlat7;
  u_xlat11.x = dot(vec3<f32>(x_507.x, x_507.y, x_507.z), vec3<f32>(x_509.x, x_509.y, x_509.z));
  let x_518 : vec3<f32> = u_xlat11;
  let x_520 : vec4<f32> = textureSample(x_LightTextureB0, sampler_LightTextureB0, vec2<f32>(x_518.x, x_518.x));
  u_xlat11.x = x_520.x;
  let x_524 : f32 = u_xlat11.x;
  let x_526 : f32 = u_xlat2.x;
  u_xlat2.x = (x_524 * x_526);
  let x_529 : f32 = u_xlat28;
  let x_531 : f32 = u_xlat2.x;
  u_xlat28 = (x_529 * x_531);
  let x_534 : vec3<f32> = vs_TEXCOORD1;
  let x_535 : vec3<f32> = u_xlat6;
  u_xlat2.x = dot(x_534, x_535);
  let x_539 : vec3<f32> = vs_TEXCOORD2;
  let x_540 : vec3<f32> = u_xlat6;
  u_xlat2.y = dot(x_539, x_540);
  let x_544 : vec3<f32> = vs_TEXCOORD3;
  let x_545 : vec3<f32> = u_xlat6;
  u_xlat2.z = dot(x_544, x_545);
  let x_549 : vec4<f32> = u_xlat2;
  let x_551 : vec4<f32> = u_xlat2;
  u_xlat29 = dot(vec3<f32>(x_549.x, x_549.y, x_549.z), vec3<f32>(x_551.x, x_551.y, x_551.z));
  let x_554 : f32 = u_xlat29;
  u_xlat29 = inverseSqrt(x_554);
  let x_556 : f32 = u_xlat29;
  let x_558 : vec4<f32> = u_xlat2;
  let x_560 : vec3<f32> = (vec3<f32>(x_556, x_556, x_556) * vec3<f32>(x_558.x, x_558.y, x_558.z));
  let x_561 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_560.x, x_560.y, x_560.z, x_561.w);
  let x_563 : f32 = u_xlat28;
  let x_567 : vec4<f32> = x_21.x_LightColor0;
  u_xlat6 = (vec3<f32>(x_563, x_563, x_563) * vec3<f32>(x_567.x, x_567.y, x_567.z));
  let x_570 : vec4<f32> = u_xlat4;
  let x_572 : vec4<f32> = vs_COLOR0;
  let x_577 : vec3<f32> = ((vec3<f32>(x_570.x, x_570.y, x_570.z) * vec3<f32>(x_572.x, x_572.y, x_572.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_578 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_577.x, x_577.y, x_577.z, x_578.w);
  let x_582 : f32 = x_21.x_Metallic;
  let x_584 : f32 = x_21.x_Metallic;
  let x_586 : f32 = x_21.x_Metallic;
  let x_587 : vec3<f32> = vec3<f32>(x_582, x_584, x_586);
  let x_592 : vec4<f32> = u_xlat4;
  let x_597 : vec3<f32> = ((vec3<f32>(x_587.x, x_587.y, x_587.z) * vec3<f32>(x_592.x, x_592.y, x_592.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_598 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_597.x, x_597.y, x_597.z, x_598.w);
  let x_601 : f32 = x_21.x_Metallic;
  u_xlat28 = ((-(x_601) * 0.959999979f) + 0.959999979f);
  let x_606 : f32 = u_xlat28;
  let x_608 : vec3<f32> = u_xlat5;
  u_xlat5 = (vec3<f32>(x_606, x_606, x_606) * x_608);
  let x_612 : f32 = x_21.x_Glossiness;
  u_xlat28 = (-(x_612) + 1.0f);
  let x_615 : vec3<f32> = u_xlat0;
  let x_616 : f32 = u_xlat27;
  let x_619 : vec3<f32> = u_xlat3;
  u_xlat0 = ((x_615 * vec3<f32>(x_616, x_616, x_616)) + x_619);
  let x_621 : vec3<f32> = u_xlat0;
  let x_622 : vec3<f32> = u_xlat0;
  u_xlat27 = dot(x_621, x_622);
  let x_624 : f32 = u_xlat27;
  u_xlat27 = max(x_624, 0.001f);
  let x_627 : f32 = u_xlat27;
  u_xlat27 = inverseSqrt(x_627);
  let x_629 : f32 = u_xlat27;
  let x_631 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_629, x_629, x_629) * x_631);
  let x_633 : vec4<f32> = u_xlat2;
  let x_635 : vec3<f32> = u_xlat3;
  u_xlat27 = dot(vec3<f32>(x_633.x, x_633.y, x_633.z), x_635);
  let x_637 : vec4<f32> = u_xlat2;
  let x_639 : vec3<f32> = u_xlat1;
  u_xlat29 = dot(vec3<f32>(x_637.x, x_637.y, x_637.z), x_639);
  let x_641 : f32 = u_xlat29;
  u_xlat29 = clamp(x_641, 0.0f, 1.0f);
  let x_643 : vec4<f32> = u_xlat2;
  let x_645 : vec3<f32> = u_xlat0;
  u_xlat2.x = dot(vec3<f32>(x_643.x, x_643.y, x_643.z), x_645);
  let x_649 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_649, 0.0f, 1.0f);
  let x_652 : vec3<f32> = u_xlat1;
  let x_653 : vec3<f32> = u_xlat0;
  u_xlat0.x = dot(x_652, x_653);
  let x_657 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_657, 0.0f, 1.0f);
  let x_662 : f32 = u_xlat0.x;
  let x_664 : f32 = u_xlat0.x;
  u_xlat9.x = (x_662 * x_664);
  let x_667 : vec3<f32> = u_xlat9;
  let x_669 : f32 = u_xlat28;
  u_xlat9.x = dot(vec2<f32>(x_667.x, x_667.x), vec2<f32>(x_669, x_669));
  let x_674 : f32 = u_xlat9.x;
  u_xlat9.x = (x_674 + -0.5f);
  let x_679 : f32 = u_xlat29;
  u_xlat18 = (-(x_679) + 1.0f);
  let x_682 : f32 = u_xlat18;
  let x_683 : f32 = u_xlat18;
  u_xlat1.x = (x_682 * x_683);
  let x_687 : f32 = u_xlat1.x;
  let x_689 : f32 = u_xlat1.x;
  u_xlat1.x = (x_687 * x_689);
  let x_692 : f32 = u_xlat18;
  let x_694 : f32 = u_xlat1.x;
  u_xlat18 = (x_692 * x_694);
  let x_697 : f32 = u_xlat9.x;
  let x_698 : f32 = u_xlat18;
  u_xlat18 = ((x_697 * x_698) + 1.0f);
  let x_701 : f32 = u_xlat27;
  u_xlat1.x = (-(abs(x_701)) + 1.0f);
  let x_708 : f32 = u_xlat1.x;
  let x_710 : f32 = u_xlat1.x;
  u_xlat10 = (x_708 * x_710);
  let x_712 : f32 = u_xlat10;
  let x_713 : f32 = u_xlat10;
  u_xlat10 = (x_712 * x_713);
  let x_716 : f32 = u_xlat1.x;
  let x_717 : f32 = u_xlat10;
  u_xlat1.x = (x_716 * x_717);
  let x_721 : f32 = u_xlat9.x;
  let x_723 : f32 = u_xlat1.x;
  u_xlat9.x = ((x_721 * x_723) + 1.0f);
  let x_728 : f32 = u_xlat9.x;
  let x_729 : f32 = u_xlat18;
  u_xlat9.x = (x_728 * x_729);
  let x_732 : f32 = u_xlat28;
  let x_733 : f32 = u_xlat28;
  u_xlat18 = (x_732 * x_733);
  let x_735 : f32 = u_xlat18;
  u_xlat18 = max(x_735, 0.002f);
  let x_738 : f32 = u_xlat18;
  u_xlat1.x = (-(x_738) + 1.0f);
  let x_742 : f32 = u_xlat27;
  let x_745 : f32 = u_xlat1.x;
  let x_747 : f32 = u_xlat18;
  u_xlat10 = ((abs(x_742) * x_745) + x_747);
  let x_749 : f32 = u_xlat29;
  let x_751 : f32 = u_xlat1.x;
  let x_753 : f32 = u_xlat18;
  u_xlat1.x = ((x_749 * x_751) + x_753);
  let x_756 : f32 = u_xlat27;
  let x_759 : f32 = u_xlat1.x;
  u_xlat27 = (abs(x_756) * x_759);
  let x_761 : f32 = u_xlat29;
  let x_762 : f32 = u_xlat10;
  let x_764 : f32 = u_xlat27;
  u_xlat27 = ((x_761 * x_762) + x_764);
  let x_766 : f32 = u_xlat27;
  u_xlat27 = (x_766 + 0.00001f);
  let x_769 : f32 = u_xlat27;
  u_xlat27 = (0.5f / x_769);
  let x_771 : f32 = u_xlat18;
  let x_772 : f32 = u_xlat18;
  u_xlat18 = (x_771 * x_772);
  let x_775 : f32 = u_xlat2.x;
  let x_776 : f32 = u_xlat18;
  let x_779 : f32 = u_xlat2.x;
  u_xlat1.x = ((x_775 * x_776) + -(x_779));
  let x_784 : f32 = u_xlat1.x;
  let x_786 : f32 = u_xlat2.x;
  u_xlat1.x = ((x_784 * x_786) + 1.0f);
  let x_790 : f32 = u_xlat18;
  u_xlat18 = (x_790 * 0.318309873f);
  let x_794 : f32 = u_xlat1.x;
  let x_796 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_794 * x_796) + 0.0000001f);
  let x_801 : f32 = u_xlat18;
  let x_803 : f32 = u_xlat1.x;
  u_xlat18 = (x_801 / x_803);
  let x_805 : f32 = u_xlat18;
  let x_806 : f32 = u_xlat27;
  u_xlat9.y = (x_805 * x_806);
  let x_809 : f32 = u_xlat29;
  let x_811 : vec3<f32> = u_xlat9;
  let x_813 : vec2<f32> = (vec2<f32>(x_809, x_809) * vec2<f32>(x_811.x, x_811.y));
  let x_814 : vec3<f32> = u_xlat9;
  u_xlat9 = vec3<f32>(x_813.x, x_813.y, x_814.z);
  let x_817 : f32 = u_xlat9.y;
  u_xlat18 = (x_817 * 3.141592741f);
  let x_820 : f32 = u_xlat18;
  u_xlat18 = max(x_820, 0.0f);
  let x_822 : vec4<f32> = u_xlat4;
  let x_824 : vec4<f32> = u_xlat4;
  u_xlat27 = dot(vec3<f32>(x_822.x, x_822.y, x_822.z), vec3<f32>(x_824.x, x_824.y, x_824.z));
  let x_828 : f32 = u_xlat27;
  u_xlatb27 = !((x_828 == 0.0f));
  let x_830 : bool = u_xlatb27;
  u_xlat27 = select(0.0f, 1.0f, x_830);
  let x_832 : f32 = u_xlat27;
  let x_833 : f32 = u_xlat18;
  u_xlat18 = (x_832 * x_833);
  let x_835 : vec3<f32> = u_xlat9;
  let x_837 : vec3<f32> = u_xlat6;
  u_xlat1 = (vec3<f32>(x_835.x, x_835.x, x_835.x) * x_837);
  let x_839 : vec3<f32> = u_xlat6;
  let x_840 : f32 = u_xlat18;
  u_xlat9 = (x_839 * vec3<f32>(x_840, x_840, x_840));
  let x_844 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_844) + 1.0f);
  let x_849 : f32 = u_xlat0.x;
  let x_851 : f32 = u_xlat0.x;
  u_xlat28 = (x_849 * x_851);
  let x_853 : f32 = u_xlat28;
  let x_854 : f32 = u_xlat28;
  u_xlat28 = (x_853 * x_854);
  let x_857 : f32 = u_xlat0.x;
  let x_858 : f32 = u_xlat28;
  u_xlat0.x = (x_857 * x_858);
  let x_861 : vec4<f32> = u_xlat4;
  let x_865 : vec3<f32> = (-(vec3<f32>(x_861.x, x_861.y, x_861.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_866 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_865.x, x_865.y, x_865.z, x_866.w);
  let x_868 : vec4<f32> = u_xlat2;
  let x_870 : vec3<f32> = u_xlat0;
  let x_873 : vec4<f32> = u_xlat4;
  let x_875 : vec3<f32> = ((vec3<f32>(x_868.x, x_868.y, x_868.z) * vec3<f32>(x_870.x, x_870.x, x_870.x)) + vec3<f32>(x_873.x, x_873.y, x_873.z));
  let x_876 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_875.x, x_875.y, x_875.z, x_876.w);
  let x_878 : vec3<f32> = u_xlat9;
  let x_879 : vec4<f32> = u_xlat2;
  u_xlat0 = (x_878 * vec3<f32>(x_879.x, x_879.y, x_879.z));
  let x_882 : vec3<f32> = u_xlat5;
  let x_883 : vec3<f32> = u_xlat1;
  let x_885 : vec3<f32> = u_xlat0;
  u_xlat0 = ((x_882 * x_883) + x_885);
  let x_888 : f32 = vs_TEXCOORD8;
  let x_890 : f32 = x_21.x_ProjectionParams.y;
  u_xlat27 = (x_888 / x_890);
  let x_892 : f32 = u_xlat27;
  u_xlat27 = (-(x_892) + 1.0f);
  let x_895 : f32 = u_xlat27;
  let x_897 : f32 = x_21.x_ProjectionParams.z;
  u_xlat27 = (x_895 * x_897);
  let x_899 : f32 = u_xlat27;
  u_xlat27 = max(x_899, 0.0f);
  let x_901 : f32 = u_xlat27;
  let x_904 : f32 = x_21.unity_FogParams.x;
  u_xlat27 = (x_901 * x_904);
  let x_906 : f32 = u_xlat27;
  let x_907 : f32 = u_xlat27;
  u_xlat27 = (x_906 * -(x_907));
  let x_910 : f32 = u_xlat27;
  u_xlat27 = exp2(x_910);
  let x_914 : vec3<f32> = u_xlat0;
  let x_915 : f32 = u_xlat27;
  let x_917 : vec3<f32> = (x_914 * vec3<f32>(x_915, x_915, x_915));
  let x_918 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_917.x, x_917.y, x_917.z, x_918.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(5) vs_TEXCOORD4_param : vec3<f32>, @location(0) vs_TEXCOORD0_param : vec4<f32>, @location(6) vs_COLOR0_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(3) vs_TEXCOORD2_param : vec3<f32>, @location(4) vs_TEXCOORD3_param : vec3<f32>, @location(2) vs_TEXCOORD8_param : f32, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_COLOR0 = vs_COLOR0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD8 = vs_TEXCOORD8_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

