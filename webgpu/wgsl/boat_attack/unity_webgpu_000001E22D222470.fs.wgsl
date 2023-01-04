struct PGlobals {
  x_GlobalMipBias : vec2<f32>,
  @size(8)
  padding : u32,
  x_MainLightColor : vec4<f32>,
  unity_MatrixInvVP : mat4x4<f32>,
  x_Size : f32,
  x_WaterLevel : f32,
  x_BlendDistance : f32,
  @size(4)
  padding_1 : u32,
  x_MainLightDir : mat4x4<f32>,
}

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(0) @binding(0) var x_CameraDepthTexture : texture_2d<f32>;

@group(0) @binding(2) var sampler_CameraDepthTexture : sampler;

@group(1) @binding(0) var<uniform> x_45 : PGlobals;

@group(0) @binding(1) var x_CausticMap : texture_2d<f32>;

@group(0) @binding(3) var sampler_CausticMap : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat6 : vec2<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec3<f32>;
  var u_xlat9 : f32;
  var u_xlat3 : f32;
  var u_xlat7 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec4<f32> = vs_TEXCOORD0;
  let x_15 : vec4<f32> = vs_TEXCOORD0;
  let x_17 : vec2<f32> = (vec2<f32>(x_13.x, x_13.y) / vec2<f32>(x_15.w, x_15.w));
  let x_18 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_17.x, x_17.y, x_18.z, x_18.w);
  let x_22 : vec4<f32> = u_xlat0;
  u_xlat6 = ((vec2<f32>(x_22.x, x_22.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_40 : vec4<f32> = u_xlat0;
  let x_52 : f32 = x_45.x_GlobalMipBias.x;
  let x_53 : vec4<f32> = textureSampleBias(x_CameraDepthTexture, sampler_CameraDepthTexture, vec2<f32>(x_40.x, x_40.y), x_52);
  u_xlat0.x = x_53.x;
  let x_58 : vec2<f32> = u_xlat6;
  let x_64 : vec4<f32> = x_45.unity_MatrixInvVP[1i];
  u_xlat1 = (vec4<f32>(x_58.y, x_58.y, x_58.y, x_58.y) * -(x_64));
  let x_68 : vec4<f32> = x_45.unity_MatrixInvVP[0i];
  let x_69 : vec2<f32> = u_xlat6;
  let x_72 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_68 * vec4<f32>(x_69.x, x_69.x, x_69.x, x_69.x)) + x_72);
  let x_75 : vec4<f32> = x_45.unity_MatrixInvVP[2i];
  let x_76 : vec4<f32> = u_xlat0;
  let x_79 : vec4<f32> = u_xlat1;
  u_xlat0 = ((x_75 * vec4<f32>(x_76.x, x_76.x, x_76.x, x_76.x)) + x_79);
  let x_81 : vec4<f32> = u_xlat0;
  let x_84 : vec4<f32> = x_45.unity_MatrixInvVP[3i];
  u_xlat0 = (x_81 + x_84);
  let x_86 : vec4<f32> = u_xlat0;
  let x_88 : vec4<f32> = u_xlat0;
  u_xlat0 = (vec4<f32>(x_86.x, x_86.y, x_86.z, x_86.z) / vec4<f32>(x_88.w, x_88.w, x_88.w, x_88.w));
  let x_91 : vec4<f32> = u_xlat0;
  let x_95 : vec2<f32> = (vec2<f32>(x_91.x, x_91.w) * vec2<f32>(0.025f, 0.025f));
  let x_96 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_95.x, x_95.y, x_96.z, x_96.w);
  let x_103 : vec4<f32> = u_xlat1;
  let x_106 : f32 = x_45.x_GlobalMipBias.x;
  let x_107 : vec4<f32> = textureSampleBias(x_CausticMap, sampler_CausticMap, vec2<f32>(x_103.x, x_103.y), x_106);
  u_xlat1.x = x_107.w;
  let x_112 : f32 = u_xlat1.x;
  u_xlat1.x = (x_112 + -0.5f);
  let x_117 : f32 = u_xlat1.x;
  u_xlat1.x = (x_117 * 0.100000001f);
  let x_124 : vec4<f32> = u_xlat0;
  let x_128 : vec4<f32> = x_45.x_MainLightDir[0i];
  u_xlat2.x = dot(vec4<f32>(x_124.x, x_124.y, x_124.w, x_124.w), x_128);
  let x_131 : vec4<f32> = u_xlat0;
  let x_133 : vec4<f32> = x_45.x_MainLightDir[1i];
  u_xlat2.y = dot(x_131, x_133);
  let x_137 : vec3<f32> = u_xlat2;
  let x_140 : f32 = x_45.x_Size;
  let x_143 : vec4<f32> = u_xlat1;
  let x_145 : vec2<f32> = ((vec2<f32>(x_137.x, x_137.y) * vec2<f32>(x_140, x_140)) + vec2<f32>(x_143.x, x_143.x));
  let x_146 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_145.x, x_146.y, x_145.y, x_146.w);
  let x_148 : vec4<f32> = u_xlat0;
  let x_150 : vec4<f32> = u_xlat0;
  let x_152 : vec2<f32> = (vec2<f32>(x_148.x, x_148.z) + vec2<f32>(x_150.x, x_150.z));
  let x_153 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_152.x, x_152.y, x_153.z, x_153.w);
  let x_157 : f32 = u_xlat0.y;
  let x_160 : f32 = x_45.x_WaterLevel;
  u_xlat9 = (x_157 + -(x_160));
  let x_165 : f32 = u_xlat0.y;
  let x_168 : f32 = x_45.x_WaterLevel;
  u_xlat3 = (-(x_165) + x_168);
  let x_170 : f32 = u_xlat3;
  u_xlat3 = clamp(x_170, 0.0f, 1.0f);
  let x_175 : f32 = u_xlat9;
  u_xlat7 = (abs(x_175) * 4.0f);
  let x_179 : f32 = u_xlat9;
  let x_182 : f32 = x_45.x_BlendDistance;
  u_xlat9 = (x_179 / x_182);
  let x_184 : f32 = u_xlat9;
  let x_186 : f32 = x_45.x_BlendDistance;
  u_xlat9 = (x_184 + x_186);
  let x_188 : f32 = u_xlat9;
  u_xlat9 = clamp(x_188, 0.0f, 1.0f);
  let x_190 : f32 = u_xlat9;
  let x_191 : f32 = u_xlat3;
  u_xlat3 = min(x_190, x_191);
  let x_193 : f32 = u_xlat7;
  let x_195 : f32 = x_45.x_BlendDistance;
  u_xlat9 = (x_193 / x_195);
  let x_200 : vec4<f32> = u_xlat1;
  let x_202 : f32 = u_xlat9;
  let x_203 : vec4<f32> = textureSampleLevel(x_CausticMap, sampler_CausticMap, vec2<f32>(x_200.x, x_200.y), x_202);
  let x_204 : vec3<f32> = vec3<f32>(x_203.x, x_203.z, x_203.w);
  let x_205 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_204.x, x_204.y, x_204.z, x_205.w);
  let x_210 : vec4<f32> = u_xlat0;
  let x_212 : f32 = u_xlat9;
  let x_213 : vec4<f32> = textureSampleLevel(x_CausticMap, sampler_CausticMap, vec2<f32>(x_210.x, x_210.z), x_212);
  let x_214 : vec2<f32> = vec2<f32>(x_213.z, x_213.w);
  let x_215 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_214.x, x_215.y, x_214.y, x_215.w);
  let x_218 : f32 = u_xlat1.y;
  let x_220 : f32 = u_xlat0.x;
  u_xlat9 = (x_218 * x_220);
  let x_222 : f32 = u_xlat9;
  let x_226 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_222 * 10.0f) + x_226);
  let x_231 : f32 = u_xlat0.z;
  u_xlat2.x = (x_231 * 0.5f);
  let x_236 : f32 = u_xlat1.y;
  let x_238 : f32 = u_xlat0.x;
  u_xlat0.x = (x_236 + x_238);
  let x_241 : vec4<f32> = u_xlat1;
  let x_245 : vec2<f32> = (vec2<f32>(x_241.z, x_241.x) * vec2<f32>(0.75f, 1.0f));
  let x_246 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_246.x, x_245.x, x_245.y);
  let x_248 : f32 = u_xlat3;
  let x_250 : f32 = u_xlat0.x;
  u_xlat0.x = (x_248 * x_250);
  let x_253 : vec3<f32> = u_xlat2;
  let x_254 : vec4<f32> = u_xlat0;
  let x_256 : vec3<f32> = (x_253 * vec3<f32>(x_254.x, x_254.x, x_254.x));
  let x_257 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_256.x, x_256.y, x_256.z, x_257.w);
  let x_261 : vec4<f32> = u_xlat0;
  let x_264 : vec4<f32> = x_45.x_MainLightColor;
  let x_266 : vec3<f32> = (vec3<f32>(x_261.x, x_261.y, x_261.z) * vec3<f32>(x_264.x, x_264.y, x_264.z));
  let x_267 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_266.x, x_266.y, x_266.z, x_267.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

