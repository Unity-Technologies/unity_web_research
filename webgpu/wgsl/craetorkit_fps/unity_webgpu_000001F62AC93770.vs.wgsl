struct VGlobals {
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding : u32,
  x_WorldSpaceLightPos0 : vec4<f32>,
  unity_ObjectToWorld : mat4x4<f32>,
  unity_WorldToObject : mat4x4<f32>,
  unity_WorldTransformParams : vec4<f32>,
  unity_MatrixVP : mat4x4<f32>,
  x_MainTex_ST : vec4<f32>,
  x_DetailAlbedoMap_ST : vec4<f32>,
  x_UVSec : f32,
  @size(12)
  padding_1 : u32,
  unity_WorldToLight : mat4x4<f32>,
}

var<private> in_POSITION0 : vec4<f32>;

@group(1) @binding(1) var<uniform> x_18 : VGlobals;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> in_TEXCOORD0 : vec2<f32>;

var<private> in_TEXCOORD1 : vec2<f32>;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> in_TANGENT0 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD5 : vec3<f32>;

var<private> in_NORMAL0 : vec3<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD6 : vec4<f32>;

var<private> vs_TEXCOORD7 : vec4<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlatb1 : bool;
  var x_111 : vec2<f32>;
  var u_xlat16 : f32;
  var u_xlat3 : vec3<f32>;
  var u_xlat4 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_12 : vec4<f32> = in_POSITION0;
  let x_24 : vec4<f32> = x_18.unity_ObjectToWorld[1i];
  u_xlat0 = (vec4<f32>(x_12.y, x_12.y, x_12.y, x_12.y) * x_24);
  let x_28 : vec4<f32> = x_18.unity_ObjectToWorld[0i];
  let x_29 : vec4<f32> = in_POSITION0;
  let x_32 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_28 * vec4<f32>(x_29.x, x_29.x, x_29.x, x_29.x)) + x_32);
  let x_35 : vec4<f32> = x_18.unity_ObjectToWorld[2i];
  let x_36 : vec4<f32> = in_POSITION0;
  let x_39 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_35 * vec4<f32>(x_36.z, x_36.z, x_36.z, x_36.z)) + x_39);
  let x_42 : vec4<f32> = u_xlat0;
  let x_45 : vec4<f32> = x_18.unity_ObjectToWorld[3i];
  u_xlat1 = (x_42 + x_45);
  let x_48 : vec4<f32> = x_18.unity_ObjectToWorld[3i];
  let x_49 : vec4<f32> = in_POSITION0;
  let x_52 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_48 * vec4<f32>(x_49.w, x_49.w, x_49.w, x_49.w)) + x_52);
  let x_55 : vec4<f32> = u_xlat1;
  let x_59 : vec4<f32> = x_18.unity_MatrixVP[1i];
  u_xlat2 = (vec4<f32>(x_55.y, x_55.y, x_55.y, x_55.y) * x_59);
  let x_62 : vec4<f32> = x_18.unity_MatrixVP[0i];
  let x_63 : vec4<f32> = u_xlat1;
  let x_66 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_62 * vec4<f32>(x_63.x, x_63.x, x_63.x, x_63.x)) + x_66);
  let x_69 : vec4<f32> = x_18.unity_MatrixVP[2i];
  let x_70 : vec4<f32> = u_xlat1;
  let x_73 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_69 * vec4<f32>(x_70.z, x_70.z, x_70.z, x_70.z)) + x_73);
  let x_76 : vec4<f32> = x_18.unity_MatrixVP[3i];
  let x_77 : vec4<f32> = u_xlat1;
  let x_80 : vec4<f32> = u_xlat2;
  u_xlat1 = ((x_76 * vec4<f32>(x_77.w, x_77.w, x_77.w, x_77.w)) + x_80);
  let x_88 : vec4<f32> = u_xlat1;
  gl_Position = x_88;
  let x_95 : f32 = u_xlat1.z;
  vs_TEXCOORD1.w = x_95;
  let x_105 : f32 = x_18.x_UVSec;
  u_xlatb1 = (x_105 == 0.0f);
  let x_108 : bool = u_xlatb1;
  if (x_108) {
    let x_116 : vec2<f32> = in_TEXCOORD0;
    x_111 = x_116;
  } else {
    let x_119 : vec2<f32> = in_TEXCOORD1;
    x_111 = x_119;
  }
  let x_120 : vec2<f32> = x_111;
  let x_121 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_120.x, x_120.y, x_121.z, x_121.w);
  let x_124 : vec4<f32> = u_xlat1;
  let x_128 : vec4<f32> = x_18.x_DetailAlbedoMap_ST;
  let x_132 : vec4<f32> = x_18.x_DetailAlbedoMap_ST;
  let x_134 : vec2<f32> = ((vec2<f32>(x_124.x, x_124.y) * vec2<f32>(x_128.x, x_128.y)) + vec2<f32>(x_132.z, x_132.w));
  let x_135 : vec4<f32> = vs_TEXCOORD0;
  vs_TEXCOORD0 = vec4<f32>(x_135.x, x_135.y, x_134.x, x_134.y);
  let x_137 : vec2<f32> = in_TEXCOORD0;
  let x_140 : vec4<f32> = x_18.x_MainTex_ST;
  let x_144 : vec4<f32> = x_18.x_MainTex_ST;
  let x_146 : vec2<f32> = ((x_137 * vec2<f32>(x_140.x, x_140.y)) + vec2<f32>(x_144.z, x_144.w));
  let x_147 : vec4<f32> = vs_TEXCOORD0;
  vs_TEXCOORD0 = vec4<f32>(x_146.x, x_146.y, x_147.z, x_147.w);
  let x_149 : vec4<f32> = in_POSITION0;
  let x_152 : vec4<f32> = x_18.unity_ObjectToWorld[1i];
  let x_154 : vec3<f32> = (vec3<f32>(x_149.y, x_149.y, x_149.y) * vec3<f32>(x_152.x, x_152.y, x_152.z));
  let x_155 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_154.x, x_154.y, x_154.z, x_155.w);
  let x_158 : vec4<f32> = x_18.unity_ObjectToWorld[0i];
  let x_160 : vec4<f32> = in_POSITION0;
  let x_163 : vec4<f32> = u_xlat1;
  let x_165 : vec3<f32> = ((vec3<f32>(x_158.x, x_158.y, x_158.z) * vec3<f32>(x_160.x, x_160.x, x_160.x)) + vec3<f32>(x_163.x, x_163.y, x_163.z));
  let x_166 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_165.x, x_165.y, x_165.z, x_166.w);
  let x_169 : vec4<f32> = x_18.unity_ObjectToWorld[2i];
  let x_171 : vec4<f32> = in_POSITION0;
  let x_174 : vec4<f32> = u_xlat1;
  let x_176 : vec3<f32> = ((vec3<f32>(x_169.x, x_169.y, x_169.z) * vec3<f32>(x_171.z, x_171.z, x_171.z)) + vec3<f32>(x_174.x, x_174.y, x_174.z));
  let x_177 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_176.x, x_176.y, x_176.z, x_177.w);
  let x_180 : vec4<f32> = x_18.unity_ObjectToWorld[3i];
  let x_182 : vec4<f32> = in_POSITION0;
  let x_185 : vec4<f32> = u_xlat1;
  let x_187 : vec3<f32> = ((vec3<f32>(x_180.x, x_180.y, x_180.z) * vec3<f32>(x_182.w, x_182.w, x_182.w)) + vec3<f32>(x_185.x, x_185.y, x_185.z));
  let x_188 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_187.x, x_187.y, x_187.z, x_188.w);
  let x_190 : vec4<f32> = u_xlat1;
  let x_194 : vec3<f32> = x_18.x_WorldSpaceCameraPos;
  let x_196 : vec3<f32> = (vec3<f32>(x_190.x, x_190.y, x_190.z) + -(x_194));
  let x_197 : vec4<f32> = vs_TEXCOORD1;
  vs_TEXCOORD1 = vec4<f32>(x_196.x, x_196.y, x_196.z, x_197.w);
  let x_200 : vec4<f32> = in_TANGENT0;
  let x_203 : vec4<f32> = x_18.unity_ObjectToWorld[1i];
  let x_205 : vec3<f32> = (vec3<f32>(x_200.y, x_200.y, x_200.y) * vec3<f32>(x_203.x, x_203.y, x_203.z));
  let x_206 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_205.x, x_205.y, x_205.z, x_206.w);
  let x_209 : vec4<f32> = x_18.unity_ObjectToWorld[0i];
  let x_211 : vec4<f32> = in_TANGENT0;
  let x_214 : vec4<f32> = u_xlat2;
  let x_216 : vec3<f32> = ((vec3<f32>(x_209.x, x_209.y, x_209.z) * vec3<f32>(x_211.x, x_211.x, x_211.x)) + vec3<f32>(x_214.x, x_214.y, x_214.z));
  let x_217 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_216.x, x_216.y, x_216.z, x_217.w);
  let x_220 : vec4<f32> = x_18.unity_ObjectToWorld[2i];
  let x_222 : vec4<f32> = in_TANGENT0;
  let x_225 : vec4<f32> = u_xlat2;
  let x_227 : vec3<f32> = ((vec3<f32>(x_220.x, x_220.y, x_220.z) * vec3<f32>(x_222.z, x_222.z, x_222.z)) + vec3<f32>(x_225.x, x_225.y, x_225.z));
  let x_228 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_227.x, x_227.y, x_227.z, x_228.w);
  let x_231 : vec4<f32> = u_xlat2;
  let x_233 : vec4<f32> = u_xlat2;
  u_xlat16 = dot(vec3<f32>(x_231.x, x_231.y, x_231.z), vec3<f32>(x_233.x, x_233.y, x_233.z));
  let x_236 : f32 = u_xlat16;
  u_xlat16 = inverseSqrt(x_236);
  let x_238 : f32 = u_xlat16;
  let x_240 : vec4<f32> = u_xlat2;
  let x_242 : vec3<f32> = (vec3<f32>(x_238, x_238, x_238) * vec3<f32>(x_240.x, x_240.y, x_240.z));
  let x_243 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_242.x, x_242.y, x_242.z, x_243.w);
  let x_246 : vec4<f32> = u_xlat2;
  let x_247 : vec3<f32> = vec3<f32>(x_246.x, x_246.y, x_246.z);
  let x_248 : vec4<f32> = vs_TEXCOORD2;
  vs_TEXCOORD2 = vec4<f32>(x_247.x, x_247.y, x_247.z, x_248.w);
  let x_252 : vec4<f32> = u_xlat1;
  let x_256 : vec4<f32> = x_18.x_WorldSpaceLightPos0;
  let x_260 : vec4<f32> = x_18.x_WorldSpaceLightPos0;
  u_xlat3 = ((-(vec3<f32>(x_252.x, x_252.y, x_252.z)) * vec3<f32>(x_256.w, x_256.w, x_256.w)) + vec3<f32>(x_260.x, x_260.y, x_260.z));
  let x_265 : vec4<f32> = u_xlat1;
  vs_TEXCOORD5 = vec3<f32>(x_265.x, x_265.y, x_265.z);
  let x_269 : f32 = u_xlat3.x;
  vs_TEXCOORD2.w = x_269;
  let x_273 : vec3<f32> = in_NORMAL0;
  let x_275 : vec4<f32> = x_18.unity_WorldToObject[0i];
  u_xlat1.x = dot(x_273, vec3<f32>(x_275.x, x_275.y, x_275.z));
  let x_279 : vec3<f32> = in_NORMAL0;
  let x_281 : vec4<f32> = x_18.unity_WorldToObject[1i];
  u_xlat1.y = dot(x_279, vec3<f32>(x_281.x, x_281.y, x_281.z));
  let x_285 : vec3<f32> = in_NORMAL0;
  let x_287 : vec4<f32> = x_18.unity_WorldToObject[2i];
  u_xlat1.z = dot(x_285, vec3<f32>(x_287.x, x_287.y, x_287.z));
  let x_291 : vec4<f32> = u_xlat1;
  let x_293 : vec4<f32> = u_xlat1;
  u_xlat16 = dot(vec3<f32>(x_291.x, x_291.y, x_291.z), vec3<f32>(x_293.x, x_293.y, x_293.z));
  let x_296 : f32 = u_xlat16;
  u_xlat16 = inverseSqrt(x_296);
  let x_298 : f32 = u_xlat16;
  let x_300 : vec4<f32> = u_xlat1;
  let x_302 : vec3<f32> = (vec3<f32>(x_298, x_298, x_298) * vec3<f32>(x_300.x, x_300.y, x_300.z));
  let x_303 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_302.x, x_302.y, x_302.z, x_303.w);
  let x_306 : vec4<f32> = u_xlat2;
  let x_308 : vec4<f32> = u_xlat1;
  u_xlat4 = (vec3<f32>(x_306.y, x_306.z, x_306.x) * vec3<f32>(x_308.z, x_308.x, x_308.y));
  let x_311 : vec4<f32> = u_xlat1;
  let x_313 : vec4<f32> = u_xlat2;
  let x_316 : vec3<f32> = u_xlat4;
  let x_318 : vec3<f32> = ((vec3<f32>(x_311.y, x_311.z, x_311.x) * vec3<f32>(x_313.z, x_313.x, x_313.y)) + -(x_316));
  let x_319 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_318.x, x_318.y, x_318.z, x_319.w);
  let x_322 : vec4<f32> = u_xlat1;
  let x_323 : vec3<f32> = vec3<f32>(x_322.x, x_322.y, x_322.z);
  let x_324 : vec4<f32> = vs_TEXCOORD4;
  vs_TEXCOORD4 = vec4<f32>(x_323.x, x_323.y, x_323.z, x_324.w);
  let x_328 : f32 = in_TANGENT0.w;
  let x_331 : f32 = x_18.unity_WorldTransformParams.w;
  u_xlat1.x = (x_328 * x_331);
  let x_335 : vec4<f32> = u_xlat1;
  let x_337 : vec4<f32> = u_xlat2;
  let x_339 : vec3<f32> = (vec3<f32>(x_335.x, x_335.x, x_335.x) * vec3<f32>(x_337.x, x_337.y, x_337.z));
  let x_340 : vec4<f32> = vs_TEXCOORD3;
  vs_TEXCOORD3 = vec4<f32>(x_339.x, x_339.y, x_339.z, x_340.w);
  let x_343 : f32 = u_xlat3.y;
  vs_TEXCOORD3.w = x_343;
  let x_346 : f32 = u_xlat3.z;
  vs_TEXCOORD4.w = x_346;
  let x_348 : vec4<f32> = u_xlat0;
  let x_352 : vec4<f32> = x_18.unity_WorldToLight[1i];
  u_xlat1 = (vec4<f32>(x_348.y, x_348.y, x_348.y, x_348.y) * x_352);
  let x_355 : vec4<f32> = x_18.unity_WorldToLight[0i];
  let x_356 : vec4<f32> = u_xlat0;
  let x_359 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_355 * vec4<f32>(x_356.x, x_356.x, x_356.x, x_356.x)) + x_359);
  let x_362 : vec4<f32> = x_18.unity_WorldToLight[2i];
  let x_363 : vec4<f32> = u_xlat0;
  let x_366 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_362 * vec4<f32>(x_363.z, x_363.z, x_363.z, x_363.z)) + x_366);
  let x_371 : vec4<f32> = x_18.unity_WorldToLight[3i];
  let x_372 : vec4<f32> = u_xlat0;
  let x_375 : vec4<f32> = u_xlat1;
  vs_TEXCOORD6 = ((x_371 * vec4<f32>(x_372.w, x_372.w, x_372.w, x_372.w)) + x_375);
  vs_TEXCOORD7 = vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f);
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(1)
  vs_TEXCOORD1_1 : vec4<f32>,
  @location(0)
  vs_TEXCOORD0_1 : vec4<f32>,
  @location(2)
  vs_TEXCOORD2_1 : vec4<f32>,
  @location(5)
  vs_TEXCOORD5_1 : vec3<f32>,
  @location(4)
  vs_TEXCOORD4_1 : vec4<f32>,
  @location(3)
  vs_TEXCOORD3_1 : vec4<f32>,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4<f32>, @location(2) in_TEXCOORD0_param : vec2<f32>, @location(3) in_TEXCOORD1_param : vec2<f32>, @location(4) in_TANGENT0_param : vec4<f32>, @location(1) in_NORMAL0_param : vec3<f32>) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  in_TEXCOORD1 = in_TEXCOORD1_param;
  in_TANGENT0 = in_TANGENT0_param;
  in_NORMAL0 = in_NORMAL0_param;
  main_1();
  return main_out(gl_Position, vs_TEXCOORD1, vs_TEXCOORD0, vs_TEXCOORD2, vs_TEXCOORD5, vs_TEXCOORD4, vs_TEXCOORD3);
}

