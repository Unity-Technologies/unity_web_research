struct PGlobals {
  x_Time : vec4<f32>,
  x_VeinColor : vec4<f32>,
  x_BrainColor : vec4<f32>,
  unity_MetaFragmentControl : vec4<u32>,
  unity_OneOverOutputBoost : f32,
  unity_MaxOutputValue : f32,
  unity_UseLinearSpace : f32,
}

@group(1) @binding(0) var<uniform> x_14 : PGlobals;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(0) @binding(1) var x_Metallic : texture_2d<f32>;

@group(0) @binding(3) var sampler_Metallic : sampler;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(2) var sampler_MainTex : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat2 : vec3<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlatb6 : bool;
  var x_199 : vec3<f32>;
  var u_xlat7 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_20 : f32 = x_14.x_Time.y;
  u_xlat0.x = fract(x_20);
  let x_26 : f32 = u_xlat0.x;
  u_xlat0.x = (x_26 + -0.039999999f);
  let x_31 : f32 = u_xlat0.x;
  let x_38 : f32 = vs_TEXCOORD0.y;
  u_xlat0.x = (-(x_31) + x_38);
  let x_42 : f32 = u_xlat0.x;
  u_xlat0.x = (x_42 * 12.5f);
  let x_47 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_47, 0.0f, 1.0f);
  let x_56 : f32 = u_xlat0.x;
  u_xlat2.x = ((x_56 * -2.0f) + 3.0f);
  let x_63 : f32 = u_xlat0.x;
  let x_65 : f32 = u_xlat0.x;
  u_xlat0.x = (x_63 * x_65);
  let x_69 : f32 = u_xlat0.x;
  let x_71 : f32 = u_xlat2.x;
  u_xlat0.x = (x_69 * x_71);
  let x_75 : f32 = u_xlat0.x;
  u_xlat0.x = (x_75 * 3.140000105f);
  let x_80 : f32 = u_xlat0.x;
  u_xlat0.x = sin(x_80);
  let x_84 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_84, 0.0f);
  let x_97 : vec2<f32> = vs_TEXCOORD0;
  let x_98 : vec4<f32> = textureSample(x_Metallic, sampler_Metallic, x_97);
  let x_99 : vec2<f32> = vec2<f32>(x_98.y, x_98.z);
  let x_100 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_99.x, x_99.y, x_100.z);
  let x_102 : vec3<f32> = u_xlat2;
  let x_106 : vec2<f32> = (-(vec2<f32>(x_102.x, x_102.y)) + vec2<f32>(1.0f, 1.0f));
  let x_107 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_106.x, x_106.y, x_107.z);
  let x_110 : vec3<f32> = u_xlat2;
  let x_115 : vec4<f32> = x_14.x_VeinColor;
  let x_117 : vec3<f32> = (vec3<f32>(x_110.y, x_110.y, x_110.y) * vec3<f32>(x_115.x, x_115.y, x_115.z));
  let x_118 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_117.x, x_117.y, x_117.z, x_118.w);
  let x_120 : vec3<f32> = u_xlat2;
  let x_124 : vec4<f32> = x_14.x_BrainColor;
  u_xlat2 = (vec3<f32>(x_120.x, x_120.x, x_120.x) * vec3<f32>(x_124.x, x_124.y, x_124.z));
  let x_127 : vec4<f32> = u_xlat0;
  let x_129 : vec4<f32> = u_xlat1;
  let x_131 : vec3<f32> = (vec3<f32>(x_127.x, x_127.x, x_127.x) * vec3<f32>(x_129.x, x_129.y, x_129.z));
  let x_132 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_131.x, x_131.y, x_131.z, x_132.w);
  let x_135 : f32 = x_14.x_Time.y;
  u_xlat0.x = (x_135 * 0.200000003f);
  let x_140 : f32 = u_xlat0.x;
  u_xlat0.x = fract(x_140);
  let x_144 : f32 = u_xlat0.x;
  u_xlat0.x = (x_144 * 3.140000105f);
  let x_148 : f32 = u_xlat0.x;
  u_xlat0.x = sin(x_148);
  let x_151 : vec3<f32> = u_xlat2;
  let x_152 : vec4<f32> = u_xlat0;
  let x_155 : vec4<f32> = u_xlat1;
  let x_157 : vec3<f32> = ((x_151 * vec3<f32>(x_152.x, x_152.x, x_152.x)) + vec3<f32>(x_155.x, x_155.y, x_155.z));
  let x_158 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_157.x, x_157.y, x_157.z, x_158.w);
  let x_160 : vec4<f32> = u_xlat0;
  let x_167 : vec3<f32> = ((vec3<f32>(x_160.x, x_160.y, x_160.z) * vec3<f32>(0.305306017f, 0.305306017f, 0.305306017f)) + vec3<f32>(0.682171106f, 0.682171106f, 0.682171106f));
  let x_168 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_167.x, x_167.y, x_167.z, x_168.w);
  let x_170 : vec4<f32> = u_xlat0;
  let x_172 : vec4<f32> = u_xlat1;
  let x_177 : vec3<f32> = ((vec3<f32>(x_170.x, x_170.y, x_170.z) * vec3<f32>(x_172.x, x_172.y, x_172.z)) + vec3<f32>(0.012522878f, 0.012522878f, 0.012522878f));
  let x_178 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_177.x, x_177.y, x_177.z, x_178.w);
  let x_180 : vec4<f32> = u_xlat0;
  let x_182 : vec4<f32> = u_xlat1;
  let x_184 : vec3<f32> = (vec3<f32>(x_180.x, x_180.y, x_180.z) * vec3<f32>(x_182.x, x_182.y, x_182.z));
  let x_185 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_184.x, x_184.y, x_184.z, x_185.w);
  let x_193 : f32 = x_14.unity_UseLinearSpace;
  u_xlatb6 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_193, x_193, x_193, x_193))));
  let x_198 : bool = u_xlatb6;
  if (x_198) {
    let x_202 : vec4<f32> = u_xlat0;
    x_199 = vec3<f32>(x_202.x, x_202.y, x_202.z);
  } else {
    let x_205 : vec4<f32> = u_xlat1;
    x_199 = vec3<f32>(x_205.x, x_205.y, x_205.z);
  }
  let x_207 : vec3<f32> = x_199;
  let x_208 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_207.x, x_207.y, x_207.z, x_208.w);
  let x_215 : vec2<f32> = vs_TEXCOORD0;
  let x_216 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_215);
  let x_217 : vec3<f32> = vec3<f32>(x_216.x, x_216.y, x_216.z);
  let x_218 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_217.x, x_217.y, x_217.z, x_218.w);
  let x_220 : vec4<f32> = u_xlat1;
  let x_222 : vec3<f32> = log2(vec3<f32>(x_220.x, x_220.y, x_220.z));
  let x_223 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_222.x, x_222.y, x_222.z, x_223.w);
  let x_228 : f32 = x_14.unity_OneOverOutputBoost;
  u_xlat7 = x_228;
  let x_229 : f32 = u_xlat7;
  u_xlat7 = clamp(x_229, 0.0f, 1.0f);
  let x_231 : vec4<f32> = u_xlat1;
  let x_233 : f32 = u_xlat7;
  let x_235 : vec3<f32> = (vec3<f32>(x_231.x, x_231.y, x_231.z) * vec3<f32>(x_233, x_233, x_233));
  let x_236 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_235.x, x_235.y, x_235.z, x_236.w);
  let x_238 : vec4<f32> = u_xlat1;
  let x_240 : vec3<f32> = exp2(vec3<f32>(x_238.x, x_238.y, x_238.z));
  let x_241 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_240.x, x_240.y, x_240.z, x_241.w);
  let x_243 : vec4<f32> = u_xlat1;
  let x_247 : f32 = x_14.unity_MaxOutputValue;
  let x_249 : f32 = x_14.unity_MaxOutputValue;
  let x_251 : f32 = x_14.unity_MaxOutputValue;
  let x_252 : vec3<f32> = vec3<f32>(x_247, x_249, x_251);
  let x_257 : vec3<f32> = min(vec3<f32>(x_243.x, x_243.y, x_243.z), vec3<f32>(x_252.x, x_252.y, x_252.z));
  let x_258 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_257.x, x_257.y, x_257.z, x_258.w);
  u_xlat1.w = 1.0f;
  let x_265 : u32 = x_14.unity_MetaFragmentControl.x;
  let x_266 : bool = (x_265 != 0u);
  let x_267 : vec4<f32> = u_xlat1;
  u_xlat1 = select(vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), x_267, vec4<bool>(x_266, x_266, x_266, x_266));
  u_xlat0.w = 1.0f;
  let x_274 : u32 = x_14.unity_MetaFragmentControl.y;
  let x_275 : bool = (x_274 != 0u);
  let x_276 : vec4<f32> = u_xlat0;
  let x_277 : vec4<f32> = u_xlat1;
  SV_Target0 = select(x_277, x_276, vec4<bool>(x_275, x_275, x_275, x_275));
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

