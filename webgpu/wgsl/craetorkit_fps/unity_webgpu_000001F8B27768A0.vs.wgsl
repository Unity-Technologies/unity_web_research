struct VGlobals {
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding : u32,
  x_ProjectionParams : vec4<f32>,
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

var<private> in_TEXCOORD0 : vec2<f32>;

var<private> in_TEXCOORD1 : vec2<f32>;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> in_TANGENT0 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD5 : vec3<f32>;

var<private> in_NORMAL0 : vec3<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD6 : vec2<f32>;

var<private> vs_TEXCOORD7 : vec4<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlatb2 : bool;
  var x_103 : vec2<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlat20 : f32;
  var u_xlat4 : vec3<f32>;
  var u_xlat5 : vec3<f32>;
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
  let x_36 : vec4<f32> = x_18.unity_ObjectToWorld[2i];
  let x_37 : vec4<f32> = in_POSITION0;
  let x_40 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_36 * vec4<f32>(x_37.z, x_37.z, x_37.z, x_37.z)) + x_40);
  let x_43 : vec4<f32> = u_xlat0;
  let x_45 : vec4<f32> = x_18.unity_ObjectToWorld[3i];
  u_xlat1 = (x_43 + x_45);
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
  let x_97 : f32 = x_18.x_UVSec;
  u_xlatb2 = (x_97 == 0.0f);
  let x_100 : bool = u_xlatb2;
  if (x_100) {
    let x_108 : vec2<f32> = in_TEXCOORD0;
    x_103 = x_108;
  } else {
    let x_111 : vec2<f32> = in_TEXCOORD1;
    x_103 = x_111;
  }
  let x_112 : vec2<f32> = x_103;
  let x_113 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_112.x, x_112.y, x_113.z, x_113.w);
  let x_116 : vec4<f32> = u_xlat2;
  let x_120 : vec4<f32> = x_18.x_DetailAlbedoMap_ST;
  let x_124 : vec4<f32> = x_18.x_DetailAlbedoMap_ST;
  let x_126 : vec2<f32> = ((vec2<f32>(x_116.x, x_116.y) * vec2<f32>(x_120.x, x_120.y)) + vec2<f32>(x_124.z, x_124.w));
  let x_127 : vec4<f32> = vs_TEXCOORD0;
  vs_TEXCOORD0 = vec4<f32>(x_127.x, x_127.y, x_126.x, x_126.y);
  let x_129 : vec2<f32> = in_TEXCOORD0;
  let x_132 : vec4<f32> = x_18.x_MainTex_ST;
  let x_136 : vec4<f32> = x_18.x_MainTex_ST;
  let x_138 : vec2<f32> = ((x_129 * vec2<f32>(x_132.x, x_132.y)) + vec2<f32>(x_136.z, x_136.w));
  let x_139 : vec4<f32> = vs_TEXCOORD0;
  vs_TEXCOORD0 = vec4<f32>(x_138.x, x_138.y, x_139.z, x_139.w);
  let x_145 : f32 = u_xlat1.z;
  vs_TEXCOORD1.w = x_145;
  let x_149 : vec4<f32> = in_POSITION0;
  let x_152 : vec4<f32> = x_18.unity_ObjectToWorld[1i];
  let x_154 : vec3<f32> = (vec3<f32>(x_149.y, x_149.y, x_149.y) * vec3<f32>(x_152.x, x_152.y, x_152.z));
  let x_155 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_154.x, x_154.y, x_154.z, x_155.w);
  let x_158 : vec4<f32> = x_18.unity_ObjectToWorld[0i];
  let x_160 : vec4<f32> = in_POSITION0;
  let x_163 : vec4<f32> = u_xlat2;
  let x_165 : vec3<f32> = ((vec3<f32>(x_158.x, x_158.y, x_158.z) * vec3<f32>(x_160.x, x_160.x, x_160.x)) + vec3<f32>(x_163.x, x_163.y, x_163.z));
  let x_166 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_165.x, x_165.y, x_165.z, x_166.w);
  let x_169 : vec4<f32> = x_18.unity_ObjectToWorld[2i];
  let x_171 : vec4<f32> = in_POSITION0;
  let x_174 : vec4<f32> = u_xlat2;
  let x_176 : vec3<f32> = ((vec3<f32>(x_169.x, x_169.y, x_169.z) * vec3<f32>(x_171.z, x_171.z, x_171.z)) + vec3<f32>(x_174.x, x_174.y, x_174.z));
  let x_177 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_176.x, x_176.y, x_176.z, x_177.w);
  let x_180 : vec4<f32> = x_18.unity_ObjectToWorld[3i];
  let x_182 : vec4<f32> = in_POSITION0;
  let x_185 : vec4<f32> = u_xlat2;
  let x_187 : vec3<f32> = ((vec3<f32>(x_180.x, x_180.y, x_180.z) * vec3<f32>(x_182.w, x_182.w, x_182.w)) + vec3<f32>(x_185.x, x_185.y, x_185.z));
  let x_188 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_187.x, x_187.y, x_187.z, x_188.w);
  let x_190 : vec4<f32> = u_xlat2;
  let x_194 : vec3<f32> = x_18.x_WorldSpaceCameraPos;
  let x_196 : vec3<f32> = (vec3<f32>(x_190.x, x_190.y, x_190.z) + -(x_194));
  let x_197 : vec4<f32> = vs_TEXCOORD1;
  vs_TEXCOORD1 = vec4<f32>(x_196.x, x_196.y, x_196.z, x_197.w);
  let x_202 : vec4<f32> = in_TANGENT0;
  let x_205 : vec4<f32> = x_18.unity_ObjectToWorld[1i];
  u_xlat3 = (vec3<f32>(x_202.y, x_202.y, x_202.y) * vec3<f32>(x_205.x, x_205.y, x_205.z));
  let x_209 : vec4<f32> = x_18.unity_ObjectToWorld[0i];
  let x_211 : vec4<f32> = in_TANGENT0;
  let x_214 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_209.x, x_209.y, x_209.z) * vec3<f32>(x_211.x, x_211.x, x_211.x)) + x_214);
  let x_217 : vec4<f32> = x_18.unity_ObjectToWorld[2i];
  let x_219 : vec4<f32> = in_TANGENT0;
  let x_222 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_217.x, x_217.y, x_217.z) * vec3<f32>(x_219.z, x_219.z, x_219.z)) + x_222);
  let x_225 : vec3<f32> = u_xlat3;
  let x_226 : vec3<f32> = u_xlat3;
  u_xlat20 = dot(x_225, x_226);
  let x_228 : f32 = u_xlat20;
  u_xlat20 = inverseSqrt(x_228);
  let x_230 : f32 = u_xlat20;
  let x_232 : vec3<f32> = u_xlat3;
  u_xlat3 = (vec3<f32>(x_230, x_230, x_230) * x_232);
  let x_235 : vec3<f32> = u_xlat3;
  let x_236 : vec4<f32> = vs_TEXCOORD2;
  vs_TEXCOORD2 = vec4<f32>(x_235.x, x_235.y, x_235.z, x_236.w);
  let x_239 : vec4<f32> = u_xlat2;
  let x_243 : vec4<f32> = x_18.x_WorldSpaceLightPos0;
  let x_247 : vec4<f32> = x_18.x_WorldSpaceLightPos0;
  u_xlat4 = ((-(vec3<f32>(x_239.x, x_239.y, x_239.z)) * vec3<f32>(x_243.w, x_243.w, x_243.w)) + vec3<f32>(x_247.x, x_247.y, x_247.z));
  let x_252 : vec4<f32> = u_xlat2;
  vs_TEXCOORD5 = vec3<f32>(x_252.x, x_252.y, x_252.z);
  let x_256 : f32 = u_xlat4.x;
  vs_TEXCOORD2.w = x_256;
  let x_260 : vec3<f32> = in_NORMAL0;
  let x_263 : vec4<f32> = x_18.unity_WorldToObject[0i];
  u_xlat2.x = dot(x_260, vec3<f32>(x_263.x, x_263.y, x_263.z));
  let x_267 : vec3<f32> = in_NORMAL0;
  let x_269 : vec4<f32> = x_18.unity_WorldToObject[1i];
  u_xlat2.y = dot(x_267, vec3<f32>(x_269.x, x_269.y, x_269.z));
  let x_273 : vec3<f32> = in_NORMAL0;
  let x_275 : vec4<f32> = x_18.unity_WorldToObject[2i];
  u_xlat2.z = dot(x_273, vec3<f32>(x_275.x, x_275.y, x_275.z));
  let x_279 : vec4<f32> = u_xlat2;
  let x_281 : vec4<f32> = u_xlat2;
  u_xlat20 = dot(vec3<f32>(x_279.x, x_279.y, x_279.z), vec3<f32>(x_281.x, x_281.y, x_281.z));
  let x_284 : f32 = u_xlat20;
  u_xlat20 = inverseSqrt(x_284);
  let x_286 : f32 = u_xlat20;
  let x_288 : vec4<f32> = u_xlat2;
  let x_290 : vec3<f32> = (vec3<f32>(x_286, x_286, x_286) * vec3<f32>(x_288.x, x_288.y, x_288.z));
  let x_291 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_290.x, x_290.y, x_290.z, x_291.w);
  let x_294 : vec3<f32> = u_xlat3;
  let x_296 : vec4<f32> = u_xlat2;
  u_xlat5 = (vec3<f32>(x_294.y, x_294.z, x_294.x) * vec3<f32>(x_296.z, x_296.x, x_296.y));
  let x_299 : vec4<f32> = u_xlat2;
  let x_301 : vec3<f32> = u_xlat3;
  let x_304 : vec3<f32> = u_xlat5;
  u_xlat3 = ((vec3<f32>(x_299.y, x_299.z, x_299.x) * vec3<f32>(x_301.z, x_301.x, x_301.y)) + -(x_304));
  let x_308 : vec4<f32> = u_xlat2;
  let x_309 : vec3<f32> = vec3<f32>(x_308.x, x_308.y, x_308.z);
  let x_310 : vec4<f32> = vs_TEXCOORD4;
  vs_TEXCOORD4 = vec4<f32>(x_309.x, x_309.y, x_309.z, x_310.w);
  let x_314 : f32 = in_TANGENT0.w;
  let x_317 : f32 = x_18.unity_WorldTransformParams.w;
  u_xlat2.x = (x_314 * x_317);
  let x_321 : vec4<f32> = u_xlat2;
  let x_323 : vec3<f32> = u_xlat3;
  let x_324 : vec3<f32> = (vec3<f32>(x_321.x, x_321.x, x_321.x) * x_323);
  let x_325 : vec4<f32> = vs_TEXCOORD3;
  vs_TEXCOORD3 = vec4<f32>(x_324.x, x_324.y, x_324.z, x_325.w);
  let x_328 : f32 = u_xlat4.y;
  vs_TEXCOORD3.w = x_328;
  let x_331 : f32 = u_xlat4.z;
  vs_TEXCOORD4.w = x_331;
  let x_333 : vec4<f32> = u_xlat0;
  let x_337 : vec4<f32> = x_18.unity_WorldToLight[1i];
  let x_339 : vec2<f32> = (vec2<f32>(x_333.y, x_333.y) * vec2<f32>(x_337.x, x_337.y));
  let x_340 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_339.x, x_339.y, x_340.z, x_340.w);
  let x_343 : vec4<f32> = x_18.unity_WorldToLight[0i];
  let x_345 : vec4<f32> = u_xlat0;
  let x_348 : vec4<f32> = u_xlat2;
  let x_350 : vec2<f32> = ((vec2<f32>(x_343.x, x_343.y) * vec2<f32>(x_345.x, x_345.x)) + vec2<f32>(x_348.x, x_348.y));
  let x_351 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_350.x, x_350.y, x_351.z, x_351.w);
  let x_354 : vec4<f32> = x_18.unity_WorldToLight[2i];
  let x_356 : vec4<f32> = u_xlat0;
  let x_359 : vec4<f32> = u_xlat0;
  let x_361 : vec2<f32> = ((vec2<f32>(x_354.x, x_354.y) * vec2<f32>(x_356.z, x_356.z)) + vec2<f32>(x_359.x, x_359.y));
  let x_362 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_361.x, x_361.y, x_362.z, x_362.w);
  let x_367 : vec4<f32> = x_18.unity_WorldToLight[3i];
  let x_369 : vec4<f32> = u_xlat0;
  let x_372 : vec4<f32> = u_xlat0;
  vs_TEXCOORD6 = ((vec2<f32>(x_367.x, x_367.y) * vec2<f32>(x_369.w, x_369.w)) + vec2<f32>(x_372.x, x_372.y));
  let x_376 : f32 = u_xlat1.y;
  let x_378 : f32 = x_18.x_ProjectionParams.x;
  u_xlat0.x = (x_376 * x_378);
  let x_382 : f32 = u_xlat0.x;
  u_xlat0.w = (x_382 * 0.5f);
  let x_386 : vec4<f32> = u_xlat1;
  let x_389 : vec2<f32> = (vec2<f32>(x_386.x, x_386.w) * vec2<f32>(0.5f, 0.5f));
  let x_390 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_389.x, x_390.y, x_389.y, x_390.w);
  let x_393 : vec4<f32> = u_xlat1;
  let x_394 : vec2<f32> = vec2<f32>(x_393.z, x_393.w);
  let x_395 : vec4<f32> = vs_TEXCOORD7;
  vs_TEXCOORD7 = vec4<f32>(x_395.x, x_395.y, x_394.x, x_394.y);
  let x_397 : vec4<f32> = u_xlat0;
  let x_399 : vec4<f32> = u_xlat0;
  let x_401 : vec2<f32> = (vec2<f32>(x_397.z, x_397.z) + vec2<f32>(x_399.x, x_399.w));
  let x_402 : vec4<f32> = vs_TEXCOORD7;
  vs_TEXCOORD7 = vec4<f32>(x_401.x, x_401.y, x_402.z, x_402.w);
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(0)
  vs_TEXCOORD0_1 : vec4<f32>,
  @location(1)
  vs_TEXCOORD1_1 : vec4<f32>,
  @location(2)
  vs_TEXCOORD2_1 : vec4<f32>,
  @location(5)
  vs_TEXCOORD5_1 : vec3<f32>,
  @location(4)
  vs_TEXCOORD4_1 : vec4<f32>,
  @location(3)
  vs_TEXCOORD3_1 : vec4<f32>,
  @location(6)
  vs_TEXCOORD7_1 : vec4<f32>,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4<f32>, @location(2) in_TEXCOORD0_param : vec2<f32>, @location(3) in_TEXCOORD1_param : vec2<f32>, @location(4) in_TANGENT0_param : vec4<f32>, @location(1) in_NORMAL0_param : vec3<f32>) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  in_TEXCOORD1 = in_TEXCOORD1_param;
  in_TANGENT0 = in_TANGENT0_param;
  in_NORMAL0 = in_NORMAL0_param;
  main_1();
  return main_out(gl_Position, vs_TEXCOORD0, vs_TEXCOORD1, vs_TEXCOORD2, vs_TEXCOORD5, vs_TEXCOORD4, vs_TEXCOORD3, vs_TEXCOORD7);
}

