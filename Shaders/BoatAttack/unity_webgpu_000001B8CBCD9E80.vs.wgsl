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

struct TerrainGrass {
  x_WavingTint : vec4<f32>,
  x_WaveAndDistance : vec4<f32>,
  x_CameraPosition : vec4<f32>,
  x_CameraRight : vec3<f32>,
  @size(4)
  padding : u32,
  x_CameraUp : vec3<f32>,
}

struct VGlobals {
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding_1 : u32,
  unity_MatrixVP : mat4x4<f32>,
}

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> in_TEXCOORD0 : vec2<f32>;

var<private> in_NORMAL0 : vec3<f32>;

@group(1) @binding(3) var<uniform> x_26 : UnityPerDraw;

var<private> vs_TEXCOORD1 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_72 : TerrainGrass;

var<private> in_POSITION0 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> in_COLOR0 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

@group(1) @binding(2) var<uniform> x_326 : VGlobals;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat9 : f32;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat4 : vec3<f32>;
  var u_xlat3 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_12 : vec2<f32> = in_TEXCOORD0;
  vs_TEXCOORD0 = x_12;
  let x_19 : vec3<f32> = in_NORMAL0;
  let x_32 : vec4<f32> = x_26.unity_WorldToObject[0i];
  u_xlat0.x = dot(x_19, vec3<f32>(x_32.x, x_32.y, x_32.z));
  let x_38 : vec3<f32> = in_NORMAL0;
  let x_40 : vec4<f32> = x_26.unity_WorldToObject[1i];
  u_xlat0.y = dot(x_38, vec3<f32>(x_40.x, x_40.y, x_40.z));
  let x_45 : vec3<f32> = in_NORMAL0;
  let x_48 : vec4<f32> = x_26.unity_WorldToObject[2i];
  u_xlat0.z = dot(x_45, vec3<f32>(x_48.x, x_48.y, x_48.z));
  let x_53 : vec4<f32> = u_xlat0;
  let x_55 : vec4<f32> = u_xlat0;
  u_xlat9 = dot(vec3<f32>(x_53.x, x_53.y, x_53.z), vec3<f32>(x_55.x, x_55.y, x_55.z));
  let x_58 : f32 = u_xlat9;
  u_xlat9 = max(x_58, 1.17549435e-37f);
  let x_61 : f32 = u_xlat9;
  u_xlat9 = inverseSqrt(x_61);
  let x_65 : f32 = u_xlat9;
  let x_67 : vec4<f32> = u_xlat0;
  vs_TEXCOORD1 = (vec3<f32>(x_65, x_65, x_65) * vec3<f32>(x_67.x, x_67.y, x_67.z));
  let x_74 : vec4<f32> = x_72.x_WaveAndDistance;
  u_xlat0 = (vec4<f32>(x_74.y, x_74.y, x_74.y, x_74.y) * vec4<f32>(0.006f, 0.02f, 0.02f, 0.050000001f));
  let x_81 : vec4<f32> = u_xlat0;
  let x_84 : vec4<f32> = in_POSITION0;
  u_xlat0 = (x_81 * vec4<f32>(x_84.z, x_84.z, x_84.z, x_84.z));
  let x_89 : vec4<f32> = x_72.x_WaveAndDistance;
  u_xlat1 = (vec4<f32>(x_89.y, x_89.y, x_89.y, x_89.y) * vec4<f32>(0.012f, 0.02f, 0.059999999f, 0.024f));
  let x_96 : vec4<f32> = in_POSITION0;
  let x_98 : vec4<f32> = u_xlat1;
  let x_100 : vec4<f32> = u_xlat0;
  u_xlat0 = ((vec4<f32>(x_96.x, x_96.x, x_96.x, x_96.x) * x_98) + x_100);
  let x_103 : vec4<f32> = x_72.x_WaveAndDistance;
  let x_111 : vec4<f32> = u_xlat0;
  u_xlat0 = ((vec4<f32>(x_103.x, x_103.x, x_103.x, x_103.x) * vec4<f32>(1.200000048f, 2.0f, 1.600000024f, 4.800000191f)) + x_111);
  let x_113 : vec4<f32> = u_xlat0;
  u_xlat0 = fract(x_113);
  let x_115 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_115 * vec4<f32>(6.408848763f, 6.408848763f, 6.408848763f, 6.408848763f)) + vec4<f32>(-3.141592741f, -3.141592741f, -3.141592741f, -3.141592741f));
  let x_122 : vec4<f32> = u_xlat0;
  let x_123 : vec4<f32> = u_xlat0;
  u_xlat1 = (x_122 * x_123);
  let x_126 : vec4<f32> = u_xlat0;
  let x_127 : vec4<f32> = u_xlat1;
  u_xlat2 = (x_126 * x_127);
  let x_129 : vec4<f32> = u_xlat2;
  let x_133 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_129 * vec4<f32>(-0.161616161f, -0.161616161f, -0.161616161f, -0.161616161f)) + x_133);
  let x_135 : vec4<f32> = u_xlat1;
  let x_136 : vec4<f32> = u_xlat2;
  u_xlat2 = (x_135 * x_136);
  let x_138 : vec4<f32> = u_xlat1;
  let x_139 : vec4<f32> = u_xlat2;
  u_xlat1 = (x_138 * x_139);
  let x_141 : vec4<f32> = u_xlat2;
  let x_145 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_141 * vec4<f32>(0.0083333f, 0.0083333f, 0.0083333f, 0.0083333f)) + x_145);
  let x_147 : vec4<f32> = u_xlat1;
  let x_151 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_147 * vec4<f32>(-0.00019841f, -0.00019841f, -0.00019841f, -0.00019841f)) + x_151);
  let x_153 : vec4<f32> = u_xlat0;
  let x_154 : vec4<f32> = u_xlat0;
  u_xlat0 = (x_153 * x_154);
  let x_156 : vec4<f32> = u_xlat0;
  let x_157 : vec4<f32> = u_xlat0;
  u_xlat0 = (x_156 * x_157);
  let x_159 : vec4<f32> = u_xlat0;
  u_xlat1.x = dot(x_159, vec4<f32>(0.674199879f, 0.674199879f, 0.269679934f, 0.134839967f));
  let x_167 : f32 = u_xlat1.x;
  u_xlat1.x = (x_167 * 0.699999988f);
  let x_174 : vec4<f32> = x_72.x_WavingTint;
  u_xlat4 = (vec3<f32>(x_174.x, x_174.y, x_174.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_179 : vec4<f32> = u_xlat1;
  let x_181 : vec3<f32> = u_xlat4;
  let x_185 : vec3<f32> = ((vec3<f32>(x_179.x, x_179.x, x_179.x) * x_181) + vec3<f32>(0.5f, 0.5f, 0.5f));
  let x_186 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_185.x, x_185.y, x_185.z, x_186.w);
  let x_188 : vec4<f32> = u_xlat1;
  let x_190 : vec4<f32> = u_xlat1;
  let x_192 : vec3<f32> = (vec3<f32>(x_188.x, x_188.y, x_188.z) + vec3<f32>(x_190.x, x_190.y, x_190.z));
  let x_193 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_192.x, x_192.y, x_192.z, x_193.w);
  let x_197 : vec4<f32> = u_xlat1;
  let x_200 : vec4<f32> = in_COLOR0;
  let x_202 : vec3<f32> = (vec3<f32>(x_197.x, x_197.y, x_197.z) * vec3<f32>(x_200.x, x_200.y, x_200.z));
  let x_203 : vec4<f32> = vs_TEXCOORD2;
  vs_TEXCOORD2 = vec4<f32>(x_202.x, x_202.y, x_202.z, x_203.w);
  let x_208 : f32 = in_COLOR0.w;
  let x_211 : f32 = x_72.x_WaveAndDistance.z;
  u_xlat1.x = (x_208 * x_211);
  let x_214 : vec4<f32> = u_xlat0;
  let x_215 : vec4<f32> = u_xlat1;
  u_xlat0 = (x_214 * vec4<f32>(x_215.x, x_215.x, x_215.x, x_215.x));
  let x_218 : vec4<f32> = u_xlat0;
  u_xlat1.x = dot(x_218, vec4<f32>(0.024f, 0.039999999f, -0.119999997f, 0.096000001f));
  let x_225 : vec4<f32> = u_xlat0;
  u_xlat1.z = dot(x_225, vec4<f32>(0.006f, 0.02f, -0.02f, 0.100000001f));
  let x_231 : vec4<f32> = u_xlat1;
  let x_235 : vec4<f32> = x_72.x_WaveAndDistance;
  let x_238 : vec4<f32> = in_POSITION0;
  let x_240 : vec2<f32> = ((-(vec2<f32>(x_231.x, x_231.z)) * vec2<f32>(x_235.z, x_235.z)) + vec2<f32>(x_238.x, x_238.z));
  let x_241 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_240.x, x_241.y, x_240.y, x_241.w);
  let x_244 : f32 = in_POSITION0.y;
  u_xlat0.y = x_244;
  let x_246 : vec4<f32> = u_xlat0;
  let x_249 : vec4<f32> = x_72.x_CameraPosition;
  let x_252 : vec3<f32> = (vec3<f32>(x_246.x, x_246.y, x_246.z) + -(vec3<f32>(x_249.x, x_249.y, x_249.z)));
  let x_253 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_252.x, x_252.y, x_252.z, x_253.w);
  let x_256 : vec4<f32> = u_xlat1;
  let x_258 : vec4<f32> = u_xlat1;
  u_xlat3 = dot(vec3<f32>(x_256.x, x_256.y, x_256.z), vec3<f32>(x_258.x, x_258.y, x_258.z));
  let x_261 : f32 = u_xlat3;
  let x_264 : f32 = x_72.x_WaveAndDistance.w;
  u_xlat3 = (-(x_261) + x_264);
  let x_267 : vec4<f32> = x_72.x_CameraPosition;
  let x_269 : f32 = u_xlat3;
  vs_TEXCOORD2.w = dot(vec2<f32>(x_267.w, x_267.w), vec2<f32>(x_269, x_269));
  let x_275 : f32 = vs_TEXCOORD2.w;
  vs_TEXCOORD2.w = clamp(x_275, 0.0f, 1.0f);
  let x_280 : vec4<f32> = in_POSITION0;
  let x_283 : vec4<f32> = x_26.unity_ObjectToWorld[1i];
  let x_285 : vec3<f32> = (vec3<f32>(x_280.y, x_280.y, x_280.y) * vec3<f32>(x_283.x, x_283.y, x_283.z));
  let x_286 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_285.x, x_285.y, x_285.z, x_286.w);
  let x_289 : vec4<f32> = x_26.unity_ObjectToWorld[0i];
  let x_291 : vec4<f32> = u_xlat0;
  let x_294 : vec4<f32> = u_xlat1;
  let x_296 : vec3<f32> = ((vec3<f32>(x_289.x, x_289.y, x_289.z) * vec3<f32>(x_291.x, x_291.x, x_291.x)) + vec3<f32>(x_294.x, x_294.y, x_294.z));
  let x_297 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_296.x, x_296.y, x_297.z, x_296.z);
  let x_300 : vec4<f32> = x_26.unity_ObjectToWorld[2i];
  let x_302 : vec4<f32> = u_xlat0;
  let x_305 : vec4<f32> = u_xlat0;
  let x_307 : vec3<f32> = ((vec3<f32>(x_300.x, x_300.y, x_300.z) * vec3<f32>(x_302.z, x_302.z, x_302.z)) + vec3<f32>(x_305.x, x_305.y, x_305.w));
  let x_308 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_307.x, x_307.y, x_307.z, x_308.w);
  let x_310 : vec4<f32> = u_xlat0;
  let x_314 : vec4<f32> = x_26.unity_ObjectToWorld[3i];
  let x_316 : vec3<f32> = (vec3<f32>(x_310.x, x_310.y, x_310.z) + vec3<f32>(x_314.x, x_314.y, x_314.z));
  let x_317 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_316.x, x_316.y, x_316.z, x_317.w);
  let x_321 : vec4<f32> = u_xlat0;
  let x_329 : vec3<f32> = x_326.x_WorldSpaceCameraPos;
  vs_TEXCOORD3 = (-(vec3<f32>(x_321.x, x_321.y, x_321.z)) + x_329);
  let x_331 : vec4<f32> = u_xlat0;
  let x_334 : vec4<f32> = x_326.unity_MatrixVP[1i];
  u_xlat1 = (vec4<f32>(x_331.y, x_331.y, x_331.y, x_331.y) * x_334);
  let x_337 : vec4<f32> = x_326.unity_MatrixVP[0i];
  let x_338 : vec4<f32> = u_xlat0;
  let x_341 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_337 * vec4<f32>(x_338.x, x_338.x, x_338.x, x_338.x)) + x_341);
  let x_344 : vec4<f32> = x_326.unity_MatrixVP[2i];
  let x_345 : vec4<f32> = u_xlat0;
  let x_348 : vec4<f32> = u_xlat1;
  u_xlat0 = ((x_344 * vec4<f32>(x_345.z, x_345.z, x_345.z, x_345.z)) + x_348);
  let x_354 : vec4<f32> = u_xlat0;
  let x_356 : vec4<f32> = x_326.unity_MatrixVP[3i];
  gl_Position = (x_354 + x_356);
  return;
}

struct main_out {
  @location(0)
  vs_TEXCOORD0_1 : vec2<f32>,
  @location(1)
  vs_TEXCOORD2_1 : vec4<f32>,
  @location(2)
  vs_TEXCOORD3_1 : vec3<f32>,
  @builtin(position)
  gl_Position : vec4<f32>,
}

@vertex
fn main(@location(3) in_TEXCOORD0_param : vec2<f32>, @location(1) in_NORMAL0_param : vec3<f32>, @location(0) in_POSITION0_param : vec4<f32>, @location(2) in_COLOR0_param : vec4<f32>) -> main_out {
  in_TEXCOORD0 = in_TEXCOORD0_param;
  in_NORMAL0 = in_NORMAL0_param;
  in_POSITION0 = in_POSITION0_param;
  in_COLOR0 = in_COLOR0_param;
  main_1();
  return main_out(vs_TEXCOORD0, vs_TEXCOORD2, vs_TEXCOORD3, gl_Position);
}

