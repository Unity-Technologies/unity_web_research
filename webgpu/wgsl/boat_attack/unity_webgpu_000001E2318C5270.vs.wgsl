type Arr = array<vec4<f32>, 2u>;

struct UnityPerDraw {
  unity_ObjectToWorld : mat4x4<f32>,
  unity_WorldToObject : mat4x4<f32>,
  unity_LODFade : vec4<f32>,
  unity_WorldTransformParams : vec4<f32>,
  unity_RenderingLayer : vec4<f32>,
  unity_LightData : vec4<f32>,
  unity_LightIndices : Arr,
  unity_ProbesOcclusion : vec4<f32>,
  unity_SpecCube0_HDR : vec4<f32>,
  unity_SpecCube1_HDR : vec4<f32>,
  unity_SpecCube0_BoxMax : vec4<f32>,
  unity_SpecCube0_BoxMin : vec4<f32>,
  unity_SpecCube0_ProbePosition : vec4<f32>,
  unity_SpecCube1_BoxMax : vec4<f32>,
  unity_SpecCube1_BoxMin : vec4<f32>,
  unity_SpecCube1_ProbePosition : vec4<f32>,
  unity_LightmapST : vec4<f32>,
  unity_DynamicLightmapST : vec4<f32>,
  unity_SHAr : vec4<f32>,
  unity_SHAg : vec4<f32>,
  unity_SHAb : vec4<f32>,
  unity_SHBr : vec4<f32>,
  unity_SHBg : vec4<f32>,
  unity_SHBb : vec4<f32>,
  unity_SHC : vec4<f32>,
  unity_RendererBounds_Min : vec4<f32>,
  unity_RendererBounds_Max : vec4<f32>,
  unity_MatrixPreviousM : mat4x4<f32>,
  unity_MatrixPreviousMI : mat4x4<f32>,
  unity_MotionVectorsParams : vec4<f32>,
  unity_SpriteColor : vec4<f32>,
  unity_SpriteProps : vec4<f32>,
}

struct VGlobals {
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding : u32,
  unity_OrthoParams : vec4<f32>,
  unity_MatrixV : mat4x4<f32>,
  unity_MatrixVP : mat4x4<f32>,
}

struct UnityPerMaterial {
  x_BaseMap_ST : vec4<f32>,
  x_BaseColor : vec4<f32>,
  x_SpecColor : vec4<f32>,
  x_EmissionColor : vec4<f32>,
  x_Cutoff : f32,
  x_Surface : f32,
}

var<private> in_POSITION0 : vec4<f32>;

@group(1) @binding(3) var<uniform> x_20 : UnityPerDraw;

@group(1) @binding(2) var<uniform> x_54 : VGlobals;

var<private> vs_TEXCOORD1 : vec2<f32>;

var<private> in_TEXCOORD0 : vec2<f32>;

@group(1) @binding(1) var<uniform> x_103 : UnityPerMaterial;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> in_NORMAL0 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> in_TANGENT0 : vec4<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat9 : f32;
  var u_xlatb9 : bool;
  var x_139 : f32;
  var x_199 : f32;
  var x_211 : f32;
  var u_xlat2 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_12 : vec4<f32> = in_POSITION0;
  let x_26 : vec4<f32> = x_20.unity_ObjectToWorld[1i];
  u_xlat0 = (vec4<f32>(x_12.y, x_12.y, x_12.y, x_12.y) * x_26);
  let x_29 : vec4<f32> = x_20.unity_ObjectToWorld[0i];
  let x_30 : vec4<f32> = in_POSITION0;
  let x_33 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_29 * vec4<f32>(x_30.x, x_30.x, x_30.x, x_30.x)) + x_33);
  let x_37 : vec4<f32> = x_20.unity_ObjectToWorld[2i];
  let x_38 : vec4<f32> = in_POSITION0;
  let x_41 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_37 * vec4<f32>(x_38.z, x_38.z, x_38.z, x_38.z)) + x_41);
  let x_43 : vec4<f32> = u_xlat0;
  let x_46 : vec4<f32> = x_20.unity_ObjectToWorld[3i];
  u_xlat0 = (x_43 + x_46);
  let x_49 : vec4<f32> = u_xlat0;
  let x_56 : vec4<f32> = x_54.unity_MatrixVP[1i];
  u_xlat1 = (vec4<f32>(x_49.y, x_49.y, x_49.y, x_49.y) * x_56);
  let x_59 : vec4<f32> = x_54.unity_MatrixVP[0i];
  let x_60 : vec4<f32> = u_xlat0;
  let x_63 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_59 * vec4<f32>(x_60.x, x_60.x, x_60.x, x_60.x)) + x_63);
  let x_66 : vec4<f32> = x_54.unity_MatrixVP[2i];
  let x_67 : vec4<f32> = u_xlat0;
  let x_70 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_66 * vec4<f32>(x_67.z, x_67.z, x_67.z, x_67.z)) + x_70);
  let x_78 : vec4<f32> = x_54.unity_MatrixVP[3i];
  let x_79 : vec4<f32> = u_xlat0;
  let x_82 : vec4<f32> = u_xlat1;
  gl_Position = ((x_78 * vec4<f32>(x_79.w, x_79.w, x_79.w, x_79.w)) + x_82);
  let x_86 : vec4<f32> = u_xlat0;
  let x_91 : vec3<f32> = x_54.x_WorldSpaceCameraPos;
  let x_92 : vec3<f32> = (-(vec3<f32>(x_86.x, x_86.y, x_86.z)) + x_91);
  let x_93 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_92.x, x_92.y, x_92.z, x_93.w);
  let x_100 : vec2<f32> = in_TEXCOORD0;
  let x_105 : vec4<f32> = x_103.x_BaseMap_ST;
  let x_109 : vec4<f32> = x_103.x_BaseMap_ST;
  vs_TEXCOORD1 = ((x_100 * vec2<f32>(x_105.x, x_105.y)) + vec2<f32>(x_109.z, x_109.w));
  let x_114 : vec4<f32> = u_xlat0;
  let x_116 : vec4<f32> = u_xlat0;
  u_xlat9 = dot(vec3<f32>(x_114.x, x_114.y, x_114.z), vec3<f32>(x_116.x, x_116.y, x_116.z));
  let x_119 : f32 = u_xlat9;
  u_xlat9 = inverseSqrt(x_119);
  let x_121 : f32 = u_xlat9;
  let x_123 : vec4<f32> = u_xlat0;
  let x_125 : vec3<f32> = (vec3<f32>(x_121, x_121, x_121) * vec3<f32>(x_123.x, x_123.y, x_123.z));
  let x_126 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_125.x, x_125.y, x_125.z, x_126.w);
  let x_134 : f32 = x_54.unity_OrthoParams.w;
  u_xlatb9 = (x_134 == 0.0f);
  let x_138 : bool = u_xlatb9;
  if (x_138) {
    let x_144 : f32 = u_xlat0.x;
    x_139 = x_144;
  } else {
    let x_147 : f32 = x_54.unity_MatrixV[0i].z;
    x_139 = x_147;
  }
  let x_148 : f32 = x_139;
  vs_TEXCOORD2.w = x_148;
  let x_153 : vec3<f32> = in_NORMAL0;
  let x_155 : vec4<f32> = x_20.unity_WorldToObject[0i];
  u_xlat1.x = dot(x_153, vec3<f32>(x_155.x, x_155.y, x_155.z));
  let x_159 : vec3<f32> = in_NORMAL0;
  let x_161 : vec4<f32> = x_20.unity_WorldToObject[1i];
  u_xlat1.y = dot(x_159, vec3<f32>(x_161.x, x_161.y, x_161.z));
  let x_165 : vec3<f32> = in_NORMAL0;
  let x_167 : vec4<f32> = x_20.unity_WorldToObject[2i];
  u_xlat1.z = dot(x_165, vec3<f32>(x_167.x, x_167.y, x_167.z));
  let x_171 : vec4<f32> = u_xlat1;
  let x_173 : vec4<f32> = u_xlat1;
  u_xlat0.x = dot(vec3<f32>(x_171.x, x_171.y, x_171.z), vec3<f32>(x_173.x, x_173.y, x_173.z));
  let x_178 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_178, 1.17549435e-37f);
  let x_183 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_183);
  let x_186 : vec4<f32> = u_xlat0;
  let x_188 : vec4<f32> = u_xlat1;
  let x_190 : vec3<f32> = (vec3<f32>(x_186.x, x_186.x, x_186.x) * vec3<f32>(x_188.x, x_188.y, x_188.z));
  let x_191 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_190.x, x_190.y, x_190.z, x_191.w);
  let x_193 : vec4<f32> = u_xlat1;
  let x_194 : vec3<f32> = vec3<f32>(x_193.x, x_193.y, x_193.z);
  let x_195 : vec4<f32> = vs_TEXCOORD2;
  vs_TEXCOORD2 = vec4<f32>(x_194.x, x_194.y, x_194.z, x_195.w);
  let x_198 : bool = u_xlatb9;
  if (x_198) {
    let x_203 : f32 = u_xlat0.y;
    x_199 = x_203;
  } else {
    let x_206 : f32 = x_54.unity_MatrixV[1i].z;
    x_199 = x_206;
  }
  let x_207 : f32 = x_199;
  vs_TEXCOORD3.w = x_207;
  let x_210 : bool = u_xlatb9;
  if (x_210) {
    let x_215 : f32 = u_xlat0.z;
    x_211 = x_215;
  } else {
    let x_218 : f32 = x_54.unity_MatrixV[2i].z;
    x_211 = x_218;
  }
  let x_219 : f32 = x_211;
  vs_TEXCOORD4.w = x_219;
  let x_222 : vec4<f32> = in_TANGENT0;
  let x_225 : vec4<f32> = x_20.unity_ObjectToWorld[1i];
  let x_227 : vec3<f32> = (vec3<f32>(x_222.y, x_222.y, x_222.y) * vec3<f32>(x_225.x, x_225.y, x_225.z));
  let x_228 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_227.x, x_227.y, x_227.z, x_228.w);
  let x_231 : vec4<f32> = x_20.unity_ObjectToWorld[0i];
  let x_233 : vec4<f32> = in_TANGENT0;
  let x_236 : vec4<f32> = u_xlat0;
  let x_238 : vec3<f32> = ((vec3<f32>(x_231.x, x_231.y, x_231.z) * vec3<f32>(x_233.x, x_233.x, x_233.x)) + vec3<f32>(x_236.x, x_236.y, x_236.z));
  let x_239 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_238.x, x_238.y, x_238.z, x_239.w);
  let x_242 : vec4<f32> = x_20.unity_ObjectToWorld[2i];
  let x_244 : vec4<f32> = in_TANGENT0;
  let x_247 : vec4<f32> = u_xlat0;
  let x_249 : vec3<f32> = ((vec3<f32>(x_242.x, x_242.y, x_242.z) * vec3<f32>(x_244.z, x_244.z, x_244.z)) + vec3<f32>(x_247.x, x_247.y, x_247.z));
  let x_250 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_249.x, x_249.y, x_249.z, x_250.w);
  let x_252 : vec4<f32> = u_xlat0;
  let x_254 : vec4<f32> = u_xlat0;
  u_xlat9 = dot(vec3<f32>(x_252.x, x_252.y, x_252.z), vec3<f32>(x_254.x, x_254.y, x_254.z));
  let x_257 : f32 = u_xlat9;
  u_xlat9 = max(x_257, 1.17549435e-37f);
  let x_259 : f32 = u_xlat9;
  u_xlat9 = inverseSqrt(x_259);
  let x_261 : f32 = u_xlat9;
  let x_263 : vec4<f32> = u_xlat0;
  let x_265 : vec3<f32> = (vec3<f32>(x_261, x_261, x_261) * vec3<f32>(x_263.x, x_263.y, x_263.z));
  let x_266 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_265.x, x_265.y, x_265.z, x_266.w);
  let x_268 : vec4<f32> = u_xlat0;
  let x_269 : vec3<f32> = vec3<f32>(x_268.x, x_268.y, x_268.z);
  let x_270 : vec4<f32> = vs_TEXCOORD3;
  vs_TEXCOORD3 = vec4<f32>(x_269.x, x_269.y, x_269.z, x_270.w);
  let x_274 : vec4<f32> = u_xlat0;
  let x_276 : vec4<f32> = u_xlat1;
  u_xlat2 = (vec3<f32>(x_274.y, x_274.z, x_274.x) * vec3<f32>(x_276.z, x_276.x, x_276.y));
  let x_279 : vec4<f32> = u_xlat1;
  let x_281 : vec4<f32> = u_xlat0;
  let x_284 : vec3<f32> = u_xlat2;
  let x_286 : vec3<f32> = ((vec3<f32>(x_279.y, x_279.z, x_279.x) * vec3<f32>(x_281.z, x_281.x, x_281.y)) + -(x_284));
  let x_287 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_286.x, x_286.y, x_286.z, x_287.w);
  let x_290 : f32 = x_20.unity_WorldTransformParams.w;
  u_xlatb9 = (x_290 >= 0.0f);
  let x_292 : bool = u_xlatb9;
  u_xlat9 = select(-1.0f, 1.0f, x_292);
  let x_296 : f32 = u_xlat9;
  let x_299 : f32 = in_TANGENT0.w;
  u_xlat9 = (x_296 * x_299);
  let x_301 : f32 = u_xlat9;
  let x_303 : vec4<f32> = u_xlat0;
  let x_305 : vec3<f32> = (vec3<f32>(x_301, x_301, x_301) * vec3<f32>(x_303.x, x_303.y, x_303.z));
  let x_306 : vec4<f32> = vs_TEXCOORD4;
  vs_TEXCOORD4 = vec4<f32>(x_305.x, x_305.y, x_305.z, x_306.w);
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(0)
  vs_TEXCOORD1_1 : vec2<f32>,
  @location(1)
  vs_TEXCOORD2_1 : vec4<f32>,
  @location(2)
  vs_TEXCOORD3_1 : vec4<f32>,
  @location(3)
  vs_TEXCOORD4_1 : vec4<f32>,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4<f32>, @location(2) in_TEXCOORD0_param : vec2<f32>, @location(3) in_NORMAL0_param : vec3<f32>, @location(1) in_TANGENT0_param : vec4<f32>) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  in_NORMAL0 = in_NORMAL0_param;
  in_TANGENT0 = in_TANGENT0_param;
  main_1();
  return main_out(gl_Position, vs_TEXCOORD1, vs_TEXCOORD2, vs_TEXCOORD3, vs_TEXCOORD4);
}

