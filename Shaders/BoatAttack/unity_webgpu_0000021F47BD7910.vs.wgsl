struct VGlobals {
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding : u32,
  x_ScreenParams : vec4<f32>,
  unity_ObjectToWorld : mat4x4<f32>,
  unity_WorldToObject : mat4x4<f32>,
  glstate_matrix_projection : mat4x4<f32>,
  unity_MatrixVP : mat4x4<f32>,
  x_FaceDilate : f32,
  x_OutlineSoftness : f32,
  x_OutlineWidth : f32,
  @size(4)
  padding_1 : u32,
  x_EnvMatrix : mat4x4<f32>,
  x_WeightNormal : f32,
  x_WeightBold : f32,
  x_ScaleRatioA : f32,
  x_VertexOffsetX : f32,
  x_VertexOffsetY : f32,
  @size(12)
  padding_2 : u32,
  x_ClipRect : vec4<f32>,
  x_MaskSoftnessX : f32,
  x_MaskSoftnessY : f32,
  x_GradientScale : f32,
  x_ScaleX : f32,
  x_ScaleY : f32,
  x_PerspectiveFilter : f32,
  x_Sharpness : f32,
  @size(4)
  padding_3 : u32,
  x_FaceTex_ST : vec4<f32>,
  x_OutlineTex_ST : vec4<f32>,
}

var<private> in_POSITION0 : vec4<f32>;

@group(1) @binding(1) var<uniform> x_19 : VGlobals;

var<private> vs_COLOR0 : vec4<f32>;

var<private> in_COLOR0 : vec4<f32>;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> in_TEXCOORD0 : vec2<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> in_TEXCOORD1 : vec2<f32>;

var<private> in_NORMAL0 : vec3<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

var<private> vs_TEXCOORD5 : vec4<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec3<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat8 : vec2<f32>;
  var u_xlat13 : f32;
  var u_xlat12 : f32;
  var u_xlat6 : vec3<f32>;
  var u_xlatb12 : bool;
  var x_300 : f32;
  var u_xlatb8 : bool;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_14 : vec4<f32> = in_POSITION0;
  let x_24 : f32 = x_19.x_VertexOffsetX;
  let x_27 : f32 = x_19.x_VertexOffsetY;
  let x_29 : vec2<f32> = (vec2<f32>(x_14.x, x_14.y) + vec2<f32>(x_24, x_27));
  let x_30 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_29.x, x_29.y, x_30.z);
  let x_34 : vec3<f32> = u_xlat0;
  let x_40 : vec4<f32> = x_19.unity_ObjectToWorld[1i];
  u_xlat1 = (vec4<f32>(x_34.y, x_34.y, x_34.y, x_34.y) * x_40);
  let x_44 : vec4<f32> = x_19.unity_ObjectToWorld[0i];
  let x_45 : vec3<f32> = u_xlat0;
  let x_48 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_44 * vec4<f32>(x_45.x, x_45.x, x_45.x, x_45.x)) + x_48);
  let x_51 : vec4<f32> = x_19.unity_ObjectToWorld[2i];
  let x_52 : vec4<f32> = in_POSITION0;
  let x_55 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_51 * vec4<f32>(x_52.z, x_52.z, x_52.z, x_52.z)) + x_55);
  let x_58 : vec4<f32> = u_xlat1;
  let x_61 : vec4<f32> = x_19.unity_ObjectToWorld[3i];
  u_xlat2 = (x_58 + x_61);
  let x_64 : vec4<f32> = x_19.unity_ObjectToWorld[3i];
  let x_66 : vec4<f32> = in_POSITION0;
  let x_69 : vec4<f32> = u_xlat1;
  let x_71 : vec3<f32> = ((vec3<f32>(x_64.x, x_64.y, x_64.z) * vec3<f32>(x_66.w, x_66.w, x_66.w)) + vec3<f32>(x_69.x, x_69.y, x_69.z));
  let x_72 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_71.x, x_71.y, x_71.z, x_72.w);
  let x_74 : vec4<f32> = u_xlat1;
  let x_79 : vec3<f32> = x_19.x_WorldSpaceCameraPos;
  let x_80 : vec3<f32> = (-(vec3<f32>(x_74.x, x_74.y, x_74.z)) + x_79);
  let x_81 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_80.x, x_80.y, x_80.z, x_81.w);
  let x_84 : vec4<f32> = u_xlat2;
  let x_88 : vec4<f32> = x_19.unity_MatrixVP[1i];
  u_xlat3 = (vec4<f32>(x_84.y, x_84.y, x_84.y, x_84.y) * x_88);
  let x_91 : vec4<f32> = x_19.unity_MatrixVP[0i];
  let x_92 : vec4<f32> = u_xlat2;
  let x_95 : vec4<f32> = u_xlat3;
  u_xlat3 = ((x_91 * vec4<f32>(x_92.x, x_92.x, x_92.x, x_92.x)) + x_95);
  let x_98 : vec4<f32> = x_19.unity_MatrixVP[2i];
  let x_99 : vec4<f32> = u_xlat2;
  let x_102 : vec4<f32> = u_xlat3;
  u_xlat3 = ((x_98 * vec4<f32>(x_99.z, x_99.z, x_99.z, x_99.z)) + x_102);
  let x_105 : vec4<f32> = x_19.unity_MatrixVP[3i];
  let x_106 : vec4<f32> = u_xlat2;
  let x_109 : vec4<f32> = u_xlat3;
  u_xlat2 = ((x_105 * vec4<f32>(x_106.w, x_106.w, x_106.w, x_106.w)) + x_109);
  let x_117 : vec4<f32> = u_xlat2;
  gl_Position = x_117;
  let x_122 : vec4<f32> = in_COLOR0;
  vs_COLOR0 = x_122;
  let x_127 : vec2<f32> = in_TEXCOORD0;
  vs_TEXCOORD0 = x_127;
  let x_131 : vec4<f32> = x_19.x_ScreenParams;
  let x_135 : vec4<f32> = x_19.glstate_matrix_projection[1i];
  u_xlat8 = (vec2<f32>(x_131.y, x_131.y) * vec2<f32>(x_135.x, x_135.y));
  let x_139 : vec4<f32> = x_19.glstate_matrix_projection[0i];
  let x_142 : vec4<f32> = x_19.x_ScreenParams;
  let x_145 : vec2<f32> = u_xlat8;
  u_xlat8 = ((vec2<f32>(x_139.x, x_139.y) * vec2<f32>(x_142.x, x_142.x)) + x_145);
  let x_147 : vec2<f32> = u_xlat8;
  let x_151 : f32 = x_19.x_ScaleX;
  let x_154 : f32 = x_19.x_ScaleY;
  u_xlat8 = (abs(x_147) * vec2<f32>(x_151, x_154));
  let x_157 : vec4<f32> = u_xlat2;
  let x_159 : vec2<f32> = u_xlat8;
  u_xlat8 = (vec2<f32>(x_157.w, x_157.w) / x_159);
  let x_163 : vec2<f32> = u_xlat8;
  let x_164 : vec2<f32> = u_xlat8;
  u_xlat13 = dot(x_163, x_164);
  let x_168 : f32 = x_19.x_MaskSoftnessX;
  let x_171 : f32 = x_19.x_MaskSoftnessY;
  let x_176 : vec2<f32> = u_xlat8;
  u_xlat8 = ((vec2<f32>(x_168, x_171) * vec2<f32>(0.25f, 0.25f)) + x_176);
  let x_179 : vec2<f32> = u_xlat8;
  let x_180 : vec2<f32> = (vec2<f32>(0.25f, 0.25f) / x_179);
  let x_181 : vec4<f32> = vs_TEXCOORD2;
  vs_TEXCOORD2 = vec4<f32>(x_181.x, x_181.y, x_180.x, x_180.y);
  let x_183 : f32 = u_xlat13;
  u_xlat8.x = inverseSqrt(x_183);
  let x_191 : f32 = in_TEXCOORD1.y;
  let x_195 : f32 = x_19.x_GradientScale;
  u_xlat12 = (abs(x_191) * x_195);
  let x_199 : f32 = x_19.x_Sharpness;
  u_xlat13 = (x_199 + 1.0f);
  let x_202 : f32 = u_xlat12;
  let x_203 : f32 = u_xlat13;
  u_xlat12 = (x_202 * x_203);
  let x_205 : f32 = u_xlat12;
  let x_207 : f32 = u_xlat8.x;
  u_xlat13 = (x_205 * x_207);
  let x_211 : f32 = x_19.x_PerspectiveFilter;
  u_xlat2.x = (-(x_211) + 1.0f);
  let x_215 : f32 = u_xlat13;
  let x_218 : f32 = u_xlat2.x;
  u_xlat2.x = (abs(x_215) * x_218);
  let x_222 : f32 = u_xlat8.x;
  let x_223 : f32 = u_xlat12;
  let x_226 : f32 = u_xlat2.x;
  u_xlat8.x = ((x_222 * x_223) + -(x_226));
  let x_232 : vec3<f32> = in_NORMAL0;
  let x_234 : vec4<f32> = x_19.unity_WorldToObject[0i];
  u_xlat3.x = dot(x_232, vec3<f32>(x_234.x, x_234.y, x_234.z));
  let x_238 : vec3<f32> = in_NORMAL0;
  let x_240 : vec4<f32> = x_19.unity_WorldToObject[1i];
  u_xlat3.y = dot(x_238, vec3<f32>(x_240.x, x_240.y, x_240.z));
  let x_244 : vec3<f32> = in_NORMAL0;
  let x_246 : vec4<f32> = x_19.unity_WorldToObject[2i];
  u_xlat3.z = dot(x_244, vec3<f32>(x_246.x, x_246.y, x_246.z));
  let x_251 : vec4<f32> = u_xlat3;
  let x_253 : vec4<f32> = u_xlat3;
  u_xlat12 = dot(vec3<f32>(x_251.x, x_251.y, x_251.z), vec3<f32>(x_253.x, x_253.y, x_253.z));
  let x_256 : f32 = u_xlat12;
  u_xlat12 = inverseSqrt(x_256);
  let x_259 : f32 = u_xlat12;
  let x_261 : vec4<f32> = u_xlat3;
  u_xlat6 = (vec3<f32>(x_259, x_259, x_259) * vec3<f32>(x_261.x, x_261.y, x_261.z));
  let x_264 : vec4<f32> = u_xlat1;
  let x_266 : vec4<f32> = u_xlat1;
  u_xlat12 = dot(vec3<f32>(x_264.x, x_264.y, x_264.z), vec3<f32>(x_266.x, x_266.y, x_266.z));
  let x_269 : f32 = u_xlat12;
  u_xlat12 = inverseSqrt(x_269);
  let x_271 : f32 = u_xlat12;
  let x_273 : vec4<f32> = u_xlat1;
  let x_275 : vec3<f32> = (vec3<f32>(x_271, x_271, x_271) * vec3<f32>(x_273.x, x_273.y, x_273.z));
  let x_276 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_275.x, x_275.y, x_275.z, x_276.w);
  let x_278 : vec3<f32> = u_xlat6;
  let x_279 : vec4<f32> = u_xlat3;
  u_xlat12 = dot(x_278, vec3<f32>(x_279.x, x_279.y, x_279.z));
  let x_282 : f32 = u_xlat12;
  let x_285 : f32 = u_xlat8.x;
  let x_288 : f32 = u_xlat2.x;
  u_xlat8.x = ((abs(x_282) * x_285) + x_288);
  let x_296 : f32 = x_19.glstate_matrix_projection[3i].w;
  u_xlatb12 = (x_296 == 0.0f);
  let x_299 : bool = u_xlatb12;
  if (x_299) {
    let x_304 : f32 = u_xlat8.x;
    x_300 = x_304;
  } else {
    let x_306 : f32 = u_xlat13;
    x_300 = x_306;
  }
  let x_307 : f32 = x_300;
  u_xlat6.x = x_307;
  let x_311 : f32 = in_TEXCOORD1.y;
  u_xlatb8 = (0.0f >= x_311);
  let x_313 : bool = u_xlatb8;
  u_xlat8.x = select(0.0f, 1.0f, x_313);
  let x_318 : f32 = x_19.x_WeightNormal;
  let x_322 : f32 = x_19.x_WeightBold;
  u_xlat12 = (-(x_318) + x_322);
  let x_325 : f32 = u_xlat8.x;
  let x_326 : f32 = u_xlat12;
  let x_329 : f32 = x_19.x_WeightNormal;
  u_xlat8.x = ((x_325 * x_326) + x_329);
  let x_333 : f32 = u_xlat8.x;
  let x_337 : f32 = x_19.x_FaceDilate;
  u_xlat8.x = ((x_333 * 0.25f) + x_337);
  let x_341 : f32 = u_xlat8.x;
  let x_344 : f32 = x_19.x_ScaleRatioA;
  u_xlat8.x = (x_341 * x_344);
  let x_348 : f32 = u_xlat8.x;
  u_xlat6.z = (x_348 * 0.5f);
  let x_353 : vec3<f32> = u_xlat6;
  let x_354 : vec2<f32> = vec2<f32>(x_353.x, x_353.z);
  let x_355 : vec4<f32> = vs_TEXCOORD1;
  vs_TEXCOORD1 = vec4<f32>(x_355.x, x_354.x, x_355.z, x_354.y);
  let x_358 : f32 = u_xlat6.x;
  u_xlat12 = (0.5f / x_358);
  let x_362 : f32 = x_19.x_OutlineWidth;
  let x_365 : f32 = x_19.x_ScaleRatioA;
  u_xlat13 = ((-(x_362) * x_365) + 1.0f);
  let x_370 : f32 = x_19.x_OutlineSoftness;
  let x_373 : f32 = x_19.x_ScaleRatioA;
  let x_375 : f32 = u_xlat13;
  u_xlat13 = ((-(x_370) * x_373) + x_375);
  let x_377 : f32 = u_xlat13;
  let x_379 : f32 = u_xlat12;
  u_xlat13 = ((x_377 * 0.5f) + -(x_379));
  let x_383 : f32 = u_xlat8.x;
  let x_386 : f32 = u_xlat13;
  vs_TEXCOORD1.x = ((-(x_383) * 0.5f) + x_386);
  let x_391 : f32 = u_xlat8.x;
  u_xlat8.x = ((-(x_391) * 0.5f) + 0.5f);
  let x_396 : f32 = u_xlat12;
  let x_398 : f32 = u_xlat8.x;
  vs_TEXCOORD1.z = (x_396 + x_398);
  let x_403 : vec4<f32> = x_19.x_ClipRect;
  u_xlat2 = max(x_403, vec4<f32>(-20000000000.0f, -20000000000.0f, -20000000000.0f, -20000000000.0f));
  let x_407 : vec4<f32> = u_xlat2;
  u_xlat2 = min(x_407, vec4<f32>(20000000000.0f, 20000000000.0f, 20000000000.0f, 20000000000.0f));
  let x_411 : vec3<f32> = u_xlat0;
  let x_416 : vec4<f32> = u_xlat2;
  let x_419 : vec2<f32> = ((vec2<f32>(x_411.x, x_411.y) * vec2<f32>(2.0f, 2.0f)) + -(vec2<f32>(x_416.x, x_416.y)));
  let x_420 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_419.x, x_419.y, x_420.z);
  let x_422 : vec4<f32> = u_xlat2;
  let x_425 : vec3<f32> = u_xlat0;
  let x_427 : vec2<f32> = (-(vec2<f32>(x_422.z, x_422.w)) + vec2<f32>(x_425.x, x_425.y));
  let x_428 : vec4<f32> = vs_TEXCOORD2;
  vs_TEXCOORD2 = vec4<f32>(x_427.x, x_427.y, x_428.z, x_428.w);
  let x_430 : vec4<f32> = u_xlat1;
  let x_434 : vec4<f32> = x_19.x_EnvMatrix[1i];
  u_xlat0 = (vec3<f32>(x_430.y, x_430.y, x_430.y) * vec3<f32>(x_434.x, x_434.y, x_434.z));
  let x_438 : vec4<f32> = x_19.x_EnvMatrix[0i];
  let x_440 : vec4<f32> = u_xlat1;
  let x_443 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_438.x, x_438.y, x_438.z) * vec3<f32>(x_440.x, x_440.x, x_440.x)) + x_443);
  let x_448 : vec4<f32> = x_19.x_EnvMatrix[2i];
  let x_450 : vec4<f32> = u_xlat1;
  let x_453 : vec3<f32> = u_xlat0;
  vs_TEXCOORD3 = ((vec3<f32>(x_448.x, x_448.y, x_448.z) * vec3<f32>(x_450.z, x_450.z, x_450.z)) + x_453);
  let x_456 : f32 = in_TEXCOORD1.x;
  u_xlat0.x = (x_456 * 0.000244140625f);
  let x_461 : f32 = u_xlat0.x;
  u_xlat8.x = floor(x_461);
  let x_465 : f32 = u_xlat8.x;
  let x_470 : f32 = in_TEXCOORD1.x;
  u_xlat8.y = ((-(x_465) * 4096.0f) + x_470);
  let x_473 : vec2<f32> = u_xlat8;
  let x_476 : vec2<f32> = (x_473 * vec2<f32>(0.001953125f, 0.001953125f));
  let x_477 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_476.x, x_476.y, x_477.z);
  let x_480 : vec3<f32> = u_xlat0;
  let x_484 : vec4<f32> = x_19.x_FaceTex_ST;
  let x_488 : vec4<f32> = x_19.x_FaceTex_ST;
  let x_490 : vec2<f32> = ((vec2<f32>(x_480.x, x_480.y) * vec2<f32>(x_484.x, x_484.y)) + vec2<f32>(x_488.z, x_488.w));
  let x_491 : vec4<f32> = vs_TEXCOORD5;
  vs_TEXCOORD5 = vec4<f32>(x_490.x, x_490.y, x_491.z, x_491.w);
  let x_493 : vec3<f32> = u_xlat0;
  let x_497 : vec4<f32> = x_19.x_OutlineTex_ST;
  let x_501 : vec4<f32> = x_19.x_OutlineTex_ST;
  let x_503 : vec2<f32> = ((vec2<f32>(x_493.x, x_493.y) * vec2<f32>(x_497.x, x_497.y)) + vec2<f32>(x_501.z, x_501.w));
  let x_504 : vec4<f32> = vs_TEXCOORD5;
  vs_TEXCOORD5 = vec4<f32>(x_504.x, x_504.y, x_503.x, x_503.y);
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(0)
  vs_COLOR0_1 : vec4<f32>,
  @location(1)
  vs_TEXCOORD0_1 : vec2<f32>,
  @location(3)
  vs_TEXCOORD2_1 : vec4<f32>,
  @location(2)
  vs_TEXCOORD1_1 : vec4<f32>,
  @location(4)
  vs_TEXCOORD5_1 : vec4<f32>,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4<f32>, @location(2) in_COLOR0_param : vec4<f32>, @location(3) in_TEXCOORD0_param : vec2<f32>, @location(4) in_TEXCOORD1_param : vec2<f32>, @location(1) in_NORMAL0_param : vec3<f32>) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_COLOR0 = in_COLOR0_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  in_TEXCOORD1 = in_TEXCOORD1_param;
  in_NORMAL0 = in_NORMAL0_param;
  main_1();
  return main_out(gl_Position, vs_COLOR0, vs_TEXCOORD0, vs_TEXCOORD2, vs_TEXCOORD1, vs_TEXCOORD5);
}

