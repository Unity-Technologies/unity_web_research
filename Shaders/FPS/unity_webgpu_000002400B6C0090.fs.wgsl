struct PGlobals {
  x_RenderViewportScaleFactor : f32,
  @size(12)
  padding : u32,
  x_BloomTex_TexelSize : vec4<f32>,
  x_Bloom_DirtTileOffset : vec4<f32>,
  x_Bloom_Settings : vec3<f32>,
  @size(4)
  padding_1 : u32,
  x_Bloom_Color : vec3<f32>,
  x_LumaInAlpha : f32,
}

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(2) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(6) var sampler_AutoExposureTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> u_xlat1 : vec4<f32>;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(5) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(0) @binding(0) var<uniform> x_49 : PGlobals;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat4 : vec4<f32>;

@group(0) @binding(3) var x_BloomTex : texture_2d<f32>;

@group(0) @binding(7) var sampler_BloomTex : sampler;

@group(0) @binding(4) var x_Bloom_DirtTex : texture_2d<f32>;

@group(0) @binding(8) var sampler_Bloom_DirtTex : sampler;

var<private> u_xlatb1 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD0;
  let x_24 : vec4<f32> = textureSample(x_AutoExposureTex, sampler_AutoExposureTex, x_23);
  u_xlat0.x = x_24.x;
  let x_37 : vec2<f32> = vs_TEXCOORD1;
  let x_38 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_37);
  u_xlat1 = x_38;
  let x_40 : vec4<f32> = u_xlat0;
  let x_42 : vec4<f32> = u_xlat1;
  let x_44 : vec3<f32> = (vec3<f32>(x_40.x, x_40.x, x_40.x) * vec3<f32>(x_42.x, x_42.y, x_42.z));
  let x_45 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_44.x, x_44.y, x_44.z, x_45.w);
  let x_54 : vec4<f32> = x_49.x_BloomTex_TexelSize;
  u_xlat0 = (vec4<f32>(x_54.x, x_54.y, x_54.x, x_54.y) * vec4<f32>(-1.0f, -1.0f, 1.0f, 1.0f));
  let x_64 : f32 = x_49.x_Bloom_Settings.x;
  u_xlat2.x = (x_64 * 0.5f);
  let x_69 : vec4<f32> = u_xlat0;
  let x_71 : vec4<f32> = u_xlat2;
  let x_74 : vec2<f32> = vs_TEXCOORD0;
  u_xlat3 = ((vec4<f32>(x_69.x, x_69.y, x_69.z, x_69.y) * vec4<f32>(x_71.x, x_71.x, x_71.x, x_71.x)) + vec4<f32>(x_74.x, x_74.y, x_74.x, x_74.y));
  let x_77 : vec4<f32> = u_xlat3;
  u_xlat3 = clamp(x_77, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_82 : vec4<f32> = u_xlat3;
  let x_85 : f32 = x_49.x_RenderViewportScaleFactor;
  u_xlat3 = (x_82 * vec4<f32>(x_85, x_85, x_85, x_85));
  let x_94 : vec4<f32> = u_xlat3;
  let x_96 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_94.x, x_94.y));
  u_xlat4 = x_96;
  let x_100 : vec4<f32> = u_xlat3;
  let x_102 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_100.z, x_100.w));
  u_xlat3 = x_102;
  let x_103 : vec4<f32> = u_xlat3;
  let x_104 : vec4<f32> = u_xlat4;
  u_xlat3 = (x_103 + x_104);
  let x_106 : vec4<f32> = u_xlat0;
  let x_108 : vec4<f32> = u_xlat2;
  let x_111 : vec2<f32> = vs_TEXCOORD0;
  u_xlat0 = ((vec4<f32>(x_106.x, x_106.w, x_106.z, x_106.w) * vec4<f32>(x_108.x, x_108.x, x_108.x, x_108.x)) + vec4<f32>(x_111.x, x_111.y, x_111.x, x_111.y));
  let x_114 : vec4<f32> = u_xlat0;
  u_xlat0 = clamp(x_114, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_118 : vec4<f32> = u_xlat0;
  let x_120 : f32 = x_49.x_RenderViewportScaleFactor;
  u_xlat0 = (x_118 * vec4<f32>(x_120, x_120, x_120, x_120));
  let x_126 : vec4<f32> = u_xlat0;
  let x_128 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_126.x, x_126.y));
  u_xlat2 = x_128;
  let x_129 : vec4<f32> = u_xlat2;
  let x_130 : vec4<f32> = u_xlat3;
  u_xlat2 = (x_129 + x_130);
  let x_135 : vec4<f32> = u_xlat0;
  let x_137 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_135.z, x_135.w));
  u_xlat0 = x_137;
  let x_138 : vec4<f32> = u_xlat0;
  let x_139 : vec4<f32> = u_xlat2;
  u_xlat0 = (x_138 + x_139);
  let x_141 : vec4<f32> = u_xlat0;
  let x_144 : vec3<f32> = x_49.x_Bloom_Settings;
  u_xlat0 = (x_141 * vec4<f32>(x_144.y, x_144.y, x_144.y, x_144.y));
  let x_147 : vec2<f32> = vs_TEXCOORD0;
  let x_150 : vec4<f32> = x_49.x_Bloom_DirtTileOffset;
  let x_154 : vec4<f32> = x_49.x_Bloom_DirtTileOffset;
  let x_156 : vec2<f32> = ((x_147 * vec2<f32>(x_150.x, x_150.y)) + vec2<f32>(x_154.z, x_154.w));
  let x_157 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_156.x, x_156.y, x_157.z, x_157.w);
  let x_164 : vec4<f32> = u_xlat2;
  let x_166 : vec4<f32> = textureSample(x_Bloom_DirtTex, sampler_Bloom_DirtTex, vec2<f32>(x_164.x, x_164.y));
  let x_167 : vec3<f32> = vec3<f32>(x_166.x, x_166.y, x_166.z);
  let x_168 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_167.x, x_167.y, x_167.z, x_168.w);
  let x_170 : vec4<f32> = u_xlat0;
  let x_174 : vec3<f32> = (vec3<f32>(x_170.x, x_170.y, x_170.z) * vec3<f32>(0.25f, 0.25f, 0.25f));
  let x_175 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_174.x, x_174.y, x_174.z, x_175.w);
  let x_177 : vec4<f32> = u_xlat2;
  let x_180 : vec3<f32> = x_49.x_Bloom_Settings;
  let x_182 : vec3<f32> = (vec3<f32>(x_177.x, x_177.y, x_177.z) * vec3<f32>(x_180.z, x_180.z, x_180.z));
  let x_183 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_182.x, x_182.y, x_182.z, x_183.w);
  let x_185 : vec4<f32> = u_xlat0;
  u_xlat0 = (x_185 * vec4<f32>(0.25f, 0.25f, 0.25f, 1.0f));
  let x_188 : vec4<f32> = u_xlat0;
  let x_192 : vec3<f32> = x_49.x_Bloom_Color;
  let x_193 : vec3<f32> = (vec3<f32>(x_188.x, x_188.y, x_188.z) * x_192);
  let x_194 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_193.x, x_193.y, x_193.z, x_194.w);
  let x_198 : f32 = u_xlat0.w;
  u_xlat4.w = (x_198 * 0.25f);
  let x_201 : vec4<f32> = u_xlat1;
  let x_202 : vec4<f32> = u_xlat4;
  u_xlat0 = (x_201 + x_202);
  let x_204 : vec4<f32> = u_xlat3;
  let x_206 : vec4<f32> = u_xlat2;
  let x_208 : vec3<f32> = (vec3<f32>(x_204.x, x_204.y, x_204.z) * vec3<f32>(x_206.x, x_206.y, x_206.z));
  let x_209 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_208.x, x_208.y, x_208.z, x_209.w);
  u_xlat1.w = 0.0f;
  let x_212 : vec4<f32> = u_xlat0;
  let x_214 : vec4<f32> = u_xlat1;
  u_xlat0 = (vec4<f32>(x_212.w, x_212.x, x_212.y, x_212.z) + vec4<f32>(x_214.w, x_214.x, x_214.y, x_214.z));
  let x_222 : f32 = x_49.x_LumaInAlpha;
  u_xlatb1 = (0.5f < x_222);
  let x_224 : bool = u_xlatb1;
  if (x_224) {
    let x_227 : vec4<f32> = u_xlat0;
    let x_228 : vec3<f32> = vec3<f32>(x_227.y, x_227.z, x_227.w);
    let x_229 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_228.x, x_228.y, x_228.z, x_229.w);
    let x_231 : vec4<f32> = u_xlat1;
    let x_235 : vec3<f32> = clamp(vec3<f32>(x_231.x, x_231.y, x_231.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_236 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_235.x, x_235.y, x_235.z, x_236.w);
    let x_238 : vec4<f32> = u_xlat1;
    u_xlat0.x = dot(vec3<f32>(x_238.x, x_238.y, x_238.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  }
  let x_248 : vec4<f32> = u_xlat0;
  SV_Target0 = vec4<f32>(x_248.y, x_248.z, x_248.w, x_248.x);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @location(1) vs_TEXCOORD1_param : vec2<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

