struct PGlobals {
  x_RenderViewportScaleFactor : f32,
  @size(12)
  padding : u32,
  x_MainTex_TexelSize : vec4<f32>,
  x_Threshold : vec4<f32>,
  x_Params : vec4<f32>,
}

@group(1) @binding(0) var<uniform> x_12 : PGlobals;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(2) var sampler_MainTex : sampler;

@group(0) @binding(1) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(3) var sampler_AutoExposureTex : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat4 : f32;
  var u_xlat10 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_17 : vec4<f32> = x_12.x_MainTex_TexelSize;
  let x_26 : vec2<f32> = vs_TEXCOORD0;
  u_xlat0 = ((vec4<f32>(x_17.x, x_17.y, x_17.x, x_17.y) * vec4<f32>(-1.0f, -1.0f, 1.0f, -1.0f)) + vec4<f32>(x_26.x, x_26.y, x_26.x, x_26.y));
  let x_29 : vec4<f32> = u_xlat0;
  u_xlat0 = clamp(x_29, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_34 : vec4<f32> = u_xlat0;
  let x_38 : f32 = x_12.x_RenderViewportScaleFactor;
  u_xlat0 = (x_34 * vec4<f32>(x_38, x_38, x_38, x_38));
  let x_52 : vec4<f32> = u_xlat0;
  let x_54 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_52.x, x_52.y));
  u_xlat1 = x_54;
  let x_58 : vec4<f32> = u_xlat0;
  let x_60 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_58.z, x_58.w));
  u_xlat0 = x_60;
  let x_61 : vec4<f32> = u_xlat0;
  let x_62 : vec4<f32> = u_xlat1;
  u_xlat0 = (x_61 + x_62);
  let x_65 : vec4<f32> = x_12.x_MainTex_TexelSize;
  let x_69 : vec2<f32> = vs_TEXCOORD0;
  u_xlat1 = ((vec4<f32>(x_65.x, x_65.y, x_65.x, x_65.y) * vec4<f32>(-1.0f, 1.0f, 1.0f, 1.0f)) + vec4<f32>(x_69.x, x_69.y, x_69.x, x_69.y));
  let x_72 : vec4<f32> = u_xlat1;
  u_xlat1 = clamp(x_72, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_76 : vec4<f32> = u_xlat1;
  let x_78 : f32 = x_12.x_RenderViewportScaleFactor;
  u_xlat1 = (x_76 * vec4<f32>(x_78, x_78, x_78, x_78));
  let x_85 : vec4<f32> = u_xlat1;
  let x_87 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_85.x, x_85.y));
  u_xlat2 = x_87;
  let x_91 : vec4<f32> = u_xlat1;
  let x_93 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_91.z, x_91.w));
  u_xlat1 = x_93;
  let x_94 : vec4<f32> = u_xlat0;
  let x_95 : vec4<f32> = u_xlat2;
  u_xlat0 = (x_94 + x_95);
  let x_97 : vec4<f32> = u_xlat1;
  let x_98 : vec4<f32> = u_xlat0;
  u_xlat0 = (x_97 + x_98);
  let x_100 : vec4<f32> = u_xlat0;
  u_xlat0 = (x_100 * vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
  let x_104 : vec4<f32> = u_xlat0;
  u_xlat0 = min(x_104, vec4<f32>(65504.0f, 65504.0f, 65504.0f, 65504.0f));
  let x_113 : vec2<f32> = vs_TEXCOORD0;
  let x_114 : vec4<f32> = textureSample(x_AutoExposureTex, sampler_AutoExposureTex, x_113);
  u_xlat1.x = x_114.x;
  let x_120 : vec4<f32> = u_xlat0;
  let x_121 : vec4<f32> = u_xlat1;
  u_xlat0 = (x_120 * vec4<f32>(x_121.x, x_121.x, x_121.x, x_121.x));
  let x_124 : vec4<f32> = u_xlat0;
  let x_127 : vec4<f32> = x_12.x_Params;
  u_xlat0 = min(x_124, vec4<f32>(x_127.x, x_127.x, x_127.x, x_127.x));
  let x_132 : f32 = u_xlat0.y;
  let x_134 : f32 = u_xlat0.x;
  u_xlat1.x = max(x_132, x_134);
  let x_139 : f32 = u_xlat0.z;
  let x_141 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_139, x_141);
  let x_144 : vec4<f32> = u_xlat1;
  let x_148 : vec4<f32> = x_12.x_Threshold;
  let x_151 : vec2<f32> = (vec2<f32>(x_144.x, x_144.x) + -(vec2<f32>(x_148.y, x_148.x)));
  let x_152 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_152.x, x_151.x, x_151.y, x_152.w);
  let x_154 : vec4<f32> = u_xlat1;
  let x_158 : vec2<f32> = max(vec2<f32>(x_154.x, x_154.y), vec2<f32>(0.0001f, 0.0f));
  let x_159 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_158.x, x_158.y, x_159.z, x_159.w);
  let x_163 : f32 = u_xlat1.y;
  let x_165 : f32 = x_12.x_Threshold.z;
  u_xlat4 = min(x_163, x_165);
  let x_168 : f32 = u_xlat4;
  let x_171 : f32 = x_12.x_Threshold.w;
  u_xlat10 = (x_168 * x_171);
  let x_173 : f32 = u_xlat4;
  let x_174 : f32 = u_xlat10;
  u_xlat4 = (x_173 * x_174);
  let x_177 : f32 = u_xlat1.z;
  let x_178 : f32 = u_xlat4;
  u_xlat4 = max(x_177, x_178);
  let x_180 : f32 = u_xlat4;
  let x_182 : f32 = u_xlat1.x;
  u_xlat1.x = (x_180 / x_182);
  let x_187 : vec4<f32> = u_xlat0;
  let x_188 : vec4<f32> = u_xlat1;
  SV_Target0 = (x_187 * vec4<f32>(x_188.x, x_188.x, x_188.x, x_188.x));
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

